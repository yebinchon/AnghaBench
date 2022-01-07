
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sg_name_u; int sg_name; } ;
struct TYPE_3__ {size_t ga_len; } ;


 TYPE_2__* HL_TABLE () ;
 TYPE_1__ highlight_ga ;
 int vim_free (int ) ;

__attribute__((used)) static void
syn_unadd_group()
{
    --highlight_ga.ga_len;
    vim_free(HL_TABLE()[highlight_ga.ga_len].sg_name);
    vim_free(HL_TABLE()[highlight_ga.ga_len].sg_name_u);
}
