
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_core_single_number_file {int value; scalar_t__ rd; int found; } ;
struct cpu_chart {int id; struct per_core_single_number_file* files; } ;
typedef int collected_number ;
typedef int RRD_ALGORITHM ;
typedef int RRDSET ;


 scalar_t__ rrddim_add (int *,int ,int *,int ,int ,int ) ;
 int rrddim_set_by_pointer (int *,scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void chart_per_core_files(struct cpu_chart *all_cpu_charts, size_t len, size_t index, RRDSET *st, collected_number multiplier, collected_number divisor, RRD_ALGORITHM algorithm) {
    size_t x;
    for(x = 0; x < len ; x++) {
        struct per_core_single_number_file *f = &all_cpu_charts[x].files[index];

        if(unlikely(!f->found))
            continue;

        if(unlikely(!f->rd))
            f->rd = rrddim_add(st, all_cpu_charts[x].id, ((void*)0), multiplier, divisor, algorithm);

        rrddim_set_by_pointer(st, f->rd, f->value);
    }
}
