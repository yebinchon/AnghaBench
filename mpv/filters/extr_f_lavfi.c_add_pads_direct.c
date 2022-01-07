
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lavfi {int dummy; } ;
typedef int AVFilterPad ;
typedef int AVFilterContext ;


 int add_pad (struct lavfi*,int,int,int *,int,int ,int) ;
 int avfilter_pad_get_name (int *,int) ;

__attribute__((used)) static void add_pads_direct(struct lavfi *c, int dir, AVFilterContext *f,
                            AVFilterPad *pads, int num_pads, bool first_init)
{
    for (int n = 0; n < num_pads; n++)
        add_pad(c, dir, n, f, n, avfilter_pad_get_name(pads, n), first_init);
}
