
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef scalar_t__ mc_ptr_t ;
struct TYPE_6__ {TYPE_2__* head; struct TYPE_6__* prev; struct TYPE_6__* next; int orig_clsid; } ;
typedef TYPE_1__ item_chunk ;
struct TYPE_7__ {int it_flags; struct TYPE_7__* prev; struct TYPE_7__* next; } ;
typedef TYPE_2__ item ;
struct TYPE_8__ {unsigned int slab_page_size; scalar_t__ verbose; } ;


 int ITEM_CHUNK ;
 int ITEM_CHUNKED ;
 int ITEM_LINKED ;
 scalar_t__ ITEM_schunk (TYPE_2__*) ;
 int assert (int) ;
 int do_item_link_fixup (TYPE_2__*) ;
 int fprintf (int ,char*,int,int) ;
 int gettimeofday (struct timeval*,int *) ;
 int mmap_base ;
 TYPE_3__ settings ;
 int slabmem_limit ;
 int slabs_fixup (char*,int) ;
 int slabs_size (int ) ;
 int stderr ;

unsigned int restart_fixup(void *orig_addr) {
    struct timeval tv;
    uint64_t checked = 0;
    const unsigned int page_size = settings.slab_page_size;
    unsigned int page_remain = page_size;

    gettimeofday(&tv, ((void*)0));
    if (settings.verbose > 0) {
        fprintf(stderr, "[restart] original memory base: [%p] new base: [%p]\n", orig_addr, mmap_base);
        fprintf(stderr, "[restart] recovery start [%d.%d]\n", (int)tv.tv_sec, (int)tv.tv_usec);
    }


    while (checked < slabmem_limit) {

        item *it = (item *)((char *)mmap_base + checked);

        int size = slabs_fixup((char *)mmap_base + checked,
                checked % settings.slab_page_size);


        if (size == -1) {
            assert(page_remain % page_size == 0);
            assert(page_remain == page_size);
            checked += page_remain;
            page_remain = page_size;
            continue;
        }

        if (it->it_flags & ITEM_LINKED) {

            if (it->next) {
                it->next = (item *)((mc_ptr_t)it->next - (mc_ptr_t)orig_addr);
                it->next = (item *)((mc_ptr_t)it->next + (mc_ptr_t)mmap_base);
            }
            if (it->prev) {
                it->prev = (item *)((mc_ptr_t)it->prev - (mc_ptr_t)orig_addr);
                it->prev = (item *)((mc_ptr_t)it->prev + (mc_ptr_t)mmap_base);
            }


            do_item_link_fixup(it);
        }

        if (it->it_flags & (ITEM_CHUNKED|ITEM_CHUNK)) {
            item_chunk *ch;
            if (it->it_flags & ITEM_CHUNKED) {
                ch = (item_chunk *) ITEM_schunk(it);




                size = slabs_size(ch->orig_clsid);

            } else {

                ch = (item_chunk *) it;
            }
            if (ch->next) {
                ch->next = (item_chunk *)((mc_ptr_t)ch->next - (mc_ptr_t)orig_addr);
                ch->next = (item_chunk *)((mc_ptr_t)ch->next + (mc_ptr_t)mmap_base);
            }
            if (ch->prev) {
                ch->prev = (item_chunk *)((mc_ptr_t)ch->prev - (mc_ptr_t)orig_addr);
                ch->prev = (item_chunk *)((mc_ptr_t)ch->prev + (mc_ptr_t)mmap_base);
            }
            if (ch->head) {
                ch->head = (item *)((mc_ptr_t)ch->head - (mc_ptr_t)orig_addr);
                ch->head = (item *)((mc_ptr_t)ch->head + (mc_ptr_t)mmap_base);
            }
        }


        checked += size;
        page_remain -= size;
        if (size > page_remain) {

            checked += page_remain;
            page_remain = settings.slab_page_size;
        }

    }

    if (settings.verbose > 0) {
        gettimeofday(&tv, ((void*)0));
        fprintf(stderr, "[restart] recovery end [%d.%d]\n", (int)tv.tv_sec, (int)tv.tv_usec);
    }

    return 0;
}
