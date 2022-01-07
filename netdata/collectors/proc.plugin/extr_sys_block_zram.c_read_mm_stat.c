
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int procfile ;
struct TYPE_3__ {void* pages_compacted; void* same_pages; void* mem_used_max; void* mem_limit; void* mem_used_total; void* compr_data_size; void* orig_data_size; } ;
typedef TYPE_1__ MM_STAT ;


 int procfile_close (int *) ;
 int procfile_lines (int *) ;
 int procfile_linewords (int *,int ) ;
 int * procfile_readall (int *) ;
 int procfile_word (int *,int) ;
 void* str2ull (int ) ;

__attribute__((used)) static inline int read_mm_stat(procfile *ff, MM_STAT *stats) {
    ff = procfile_readall(ff);
    if (!ff)
        return -1;
    if (procfile_lines(ff) < 1) {
        procfile_close(ff);
        return -1;
    }
    if (procfile_linewords(ff, 0) < 7) {
        procfile_close(ff);
        return -1;
    }

    stats->orig_data_size = str2ull(procfile_word(ff, 0));
    stats->compr_data_size = str2ull(procfile_word(ff, 1));
    stats->mem_used_total = str2ull(procfile_word(ff, 2));
    stats->mem_limit = str2ull(procfile_word(ff, 3));
    stats->mem_used_max = str2ull(procfile_word(ff, 4));
    stats->same_pages = str2ull(procfile_word(ff, 5));
    stats->pages_compacted = str2ull(procfile_word(ff, 6));
    return 0;
}
