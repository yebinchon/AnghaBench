
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_deletes; int num_sets; int num_hits; int num_gets; int prefix; struct TYPE_3__* next; } ;
typedef TYPE_1__ PREFIX_STATS ;


 int PREFIX_HASH_SIZE ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int assert (int) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,int) ;
 int num_prefixes ;
 int perror (char*) ;
 TYPE_1__** prefix_stats ;
 size_t snprintf (char*,size_t,char const*,int ,int ,int ,int ,int ) ;
 int strlen (char const*) ;
 int total_prefix_size ;

char *stats_prefix_dump(int *length) {
    const char *format = "PREFIX %s get %llu hit %llu set %llu del %llu\r\n";
    PREFIX_STATS *pfs;
    char *buf;
    int i, pos;
    size_t size = 0, written = 0, total_written = 0;







    STATS_LOCK();
    size = strlen(format) + total_prefix_size +
           num_prefixes * (strlen(format) - 2
                           + 4 * (20 - 4))
                           + sizeof("END\r\n");
    buf = malloc(size);
    if (((void*)0) == buf) {
        perror("Can't allocate stats response: malloc");
        STATS_UNLOCK();
        return ((void*)0);
    }

    pos = 0;
    for (i = 0; i < PREFIX_HASH_SIZE; i++) {
        for (pfs = prefix_stats[i]; ((void*)0) != pfs; pfs = pfs->next) {
            written = snprintf(buf + pos, size-pos, format,
                           pfs->prefix, pfs->num_gets, pfs->num_hits,
                           pfs->num_sets, pfs->num_deletes);
            pos += written;
            total_written += written;
            assert(total_written < size);
        }
    }

    STATS_UNLOCK();
    memcpy(buf + pos, "END\r\n", 6);

    *length = pos + 5;
    return buf;
}
