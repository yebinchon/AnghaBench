
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int temp ;
struct TYPE_4__ {int nkey; scalar_t__ nbytes; scalar_t__ exptime; struct TYPE_4__* next; } ;
typedef TYPE_1__ item ;


 unsigned int COLD_LRU ;
 int ITEM_key (TYPE_1__*) ;
 int KEY_MAX_LENGTH ;
 int assert (int) ;
 TYPE_1__** heads ;
 int * lru_locks ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ process_started ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 unsigned int snprintf (char*,int,char*,char*,scalar_t__,scalar_t__) ;
 int strncpy (char*,int ,int) ;

char *item_cachedump(const unsigned int slabs_clsid, const unsigned int limit, unsigned int *bytes) {
    unsigned int memlimit = 2 * 1024 * 1024;
    char *buffer;
    unsigned int bufcurr;
    item *it;
    unsigned int len;
    unsigned int shown = 0;
    char key_temp[KEY_MAX_LENGTH + 1];
    char temp[512];
    unsigned int id = slabs_clsid;
    id |= COLD_LRU;

    pthread_mutex_lock(&lru_locks[id]);
    it = heads[id];

    buffer = malloc((size_t)memlimit);
    if (buffer == 0) {
        pthread_mutex_unlock(&lru_locks[id]);
        return ((void*)0);
    }
    bufcurr = 0;

    while (it != ((void*)0) && (limit == 0 || shown < limit)) {
        assert(it->nkey <= KEY_MAX_LENGTH);
        if (it->nbytes == 0 && it->nkey == 0) {
            it = it->next;
            continue;
        }

        strncpy(key_temp, ITEM_key(it), it->nkey);
        key_temp[it->nkey] = 0x00;
        len = snprintf(temp, sizeof(temp), "ITEM %s [%d b; %llu s]\r\n",
                       key_temp, it->nbytes - 2,
                       it->exptime == 0 ? 0 :
                       (unsigned long long)it->exptime + process_started);
        if (bufcurr + len + 6 > memlimit)
            break;
        memcpy(buffer + bufcurr, temp, len);
        bufcurr += len;
        shown++;
        it = it->next;
    }

    memcpy(buffer + bufcurr, "END\r\n", 6);
    bufcurr += 5;

    *bytes = bufcurr;
    pthread_mutex_unlock(&lru_locks[id]);
    return buffer;
}
