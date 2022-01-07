
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t const uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ rel_time_t ;
struct TYPE_11__ {unsigned int orig_clsid; TYPE_2__* head; scalar_t__ size; scalar_t__ used; scalar_t__ prev; scalar_t__ next; } ;
typedef TYPE_1__ item_chunk ;
struct TYPE_12__ {int it_flags; unsigned int slabs_clsid; size_t nkey; int nbytes; scalar_t__ exptime; scalar_t__ h_next; scalar_t__ prev; scalar_t__ next; } ;
typedef TYPE_2__ item ;
typedef int flags ;
struct TYPE_14__ {int outofmemory; } ;
struct TYPE_13__ {size_t slab_chunk_size_max; scalar_t__ const temporary_ttl; scalar_t__ use_cas; scalar_t__ lru_segmented; scalar_t__ temp_lru; } ;


 unsigned int COLD_LRU ;
 int DEBUG_REFCNT (TYPE_2__*,char) ;
 unsigned int HOT_LRU ;
 int ITEM_CAS ;
 int ITEM_CFLAGS ;
 int ITEM_CHUNKED ;
 int ITEM_key (TYPE_2__*) ;
 scalar_t__ ITEM_schunk (TYPE_2__*) ;
 int ITEM_suffix (TYPE_2__*) ;
 unsigned int TEMP_LRU ;
 int assert (int) ;
 scalar_t__ const current_time ;
 TYPE_2__* do_item_alloc_pull (size_t,unsigned int) ;
 size_t item_make_header (size_t const,unsigned int const,int const,char*,size_t const*) ;
 TYPE_4__* itemstats ;
 int * lru_locks ;
 int memcpy (int ,...) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_3__ settings ;
 unsigned int slabs_clsid (int) ;

item *do_item_alloc(char *key, const size_t nkey, const unsigned int flags,
                    const rel_time_t exptime, const int nbytes) {
    uint8_t nsuffix;
    item *it = ((void*)0);
    char suffix[40];

    if (nbytes < 2)
        return 0;

    size_t ntotal = item_make_header(nkey + 1, flags, nbytes, suffix, &nsuffix);
    if (settings.use_cas) {
        ntotal += sizeof(uint64_t);
    }

    unsigned int id = slabs_clsid(ntotal);
    unsigned int hdr_id = 0;
    if (id == 0)
        return 0;




    if (ntotal > settings.slab_chunk_size_max) {




        int htotal = nkey + 1 + nsuffix + sizeof(item) + sizeof(item_chunk);
        if (settings.use_cas) {
            htotal += sizeof(uint64_t);
        }







        hdr_id = slabs_clsid(htotal);
        it = do_item_alloc_pull(htotal, hdr_id);

        if (it != ((void*)0))
            it->it_flags |= ITEM_CHUNKED;
    } else {
        it = do_item_alloc_pull(ntotal, id);
    }

    if (it == ((void*)0)) {
        pthread_mutex_lock(&lru_locks[id]);
        itemstats[id].outofmemory++;
        pthread_mutex_unlock(&lru_locks[id]);
        return ((void*)0);
    }

    assert(it->it_flags == 0 || it->it_flags == ITEM_CHUNKED);



    it->next = it->prev = 0;




    if (settings.temp_lru &&
            exptime - current_time <= settings.temporary_ttl) {
        id |= TEMP_LRU;
    } else if (settings.lru_segmented) {
        id |= HOT_LRU;
    } else {

        id |= COLD_LRU;
    }
    it->slabs_clsid = id;

    DEBUG_REFCNT(it, '*');
    it->it_flags |= settings.use_cas ? ITEM_CAS : 0;
    it->it_flags |= nsuffix != 0 ? ITEM_CFLAGS : 0;
    it->nkey = nkey;
    it->nbytes = nbytes;
    memcpy(ITEM_key(it), key, nkey);
    it->exptime = exptime;
    if (nsuffix > 0) {
        memcpy(ITEM_suffix(it), &flags, sizeof(flags));
    }


    if (it->it_flags & ITEM_CHUNKED) {
        item_chunk *chunk = (item_chunk *) ITEM_schunk(it);

        chunk->next = 0;
        chunk->prev = 0;
        chunk->used = 0;
        chunk->size = 0;
        chunk->head = it;
        chunk->orig_clsid = hdr_id;
    }
    it->h_next = 0;

    return it;
}
