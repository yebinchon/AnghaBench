
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int storage_number ;
typedef scalar_t__ RRD_MEMORY_MODE ;
typedef int RRDDIM ;


 long RRD_HISTORY_ENTRIES_MAX ;
 scalar_t__ RRD_MEMORY_MODE_ALLOC ;
 scalar_t__ RRD_MEMORY_MODE_NONE ;
 int _SC_PAGESIZE ;
 int sysconf (int ) ;
 scalar_t__ unlikely (long) ;

inline long align_entries_to_pagesize(RRD_MEMORY_MODE mode, long entries) {
    if(unlikely(entries < 5)) entries = 5;
    if(unlikely(entries > RRD_HISTORY_ENTRIES_MAX)) entries = RRD_HISTORY_ENTRIES_MAX;

    if(unlikely(mode == RRD_MEMORY_MODE_NONE || mode == RRD_MEMORY_MODE_ALLOC))
        return entries;

    long page = (size_t)sysconf(_SC_PAGESIZE);
    long size = sizeof(RRDDIM) + entries * sizeof(storage_number);
    if(unlikely(size % page)) {
        size -= (size % page);
        size += page;

        long n = (size - sizeof(RRDDIM)) / sizeof(storage_number);
        return n;
    }

    return entries;
}
