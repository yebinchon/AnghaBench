
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_alloc_efficiency; int rd_alloc_efficiency; int st_comp_ratio; int rd_comp_ratio; int st_savings; int rd_original_size; int rd_savings_size; int st_usage; int rd_metadata_size; int rd_compr_data_size; int file; } ;
typedef TYPE_1__ ZRAM_DEVICE ;
struct TYPE_6__ {int compr_data_size; int mem_used_total; int orig_data_size; } ;
typedef TYPE_2__ MM_STAT ;
typedef int DICTIONARY ;


 int free_device (int *,char*) ;
 scalar_t__ likely (int) ;
 scalar_t__ read_mm_stat (int ,TYPE_2__*) ;
 int rrddim_set_by_pointer (int ,int ,int) ;
 int rrdset_done (int ) ;
 int rrdset_next (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int _collect_zram_metrics(char* name, ZRAM_DEVICE *d, int advance, DICTIONARY* dict) {
    MM_STAT mm;
    int value;
    if (unlikely(read_mm_stat(d->file, &mm) < 0))
    {
        free_device(dict, name);
        return -1;
    }

    if (likely(advance))
    {
        rrdset_next(d->st_usage);
        rrdset_next(d->st_savings);
        rrdset_next(d->st_comp_ratio);
        rrdset_next(d->st_alloc_efficiency);
    }

    rrddim_set_by_pointer(d->st_usage, d->rd_compr_data_size, mm.compr_data_size);
    rrddim_set_by_pointer(d->st_usage, d->rd_metadata_size, mm.mem_used_total - mm.compr_data_size);
    rrdset_done(d->st_usage);

    rrddim_set_by_pointer(d->st_savings, d->rd_savings_size, mm.compr_data_size - mm.orig_data_size);
    rrddim_set_by_pointer(d->st_savings, d->rd_original_size, mm.orig_data_size);
    rrdset_done(d->st_savings);

    value = mm.compr_data_size == 0 ? 1 : mm.orig_data_size * 100 / mm.compr_data_size;
    rrddim_set_by_pointer(d->st_comp_ratio, d->rd_comp_ratio, value);
    rrdset_done(d->st_comp_ratio);

    value = mm.mem_used_total == 0 ? 100 : (mm.compr_data_size * 1000000 / mm.mem_used_total);
    rrddim_set_by_pointer(d->st_alloc_efficiency, d->rd_alloc_efficiency, value);
    rrdset_done(d->st_alloc_efficiency);
    return 0;
}
