
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int number; } ;
typedef TYPE_1__ calc_node_t ;
struct TYPE_9__ {scalar_t__ base; } ;
struct TYPE_8__ {int (* op_i ) (int *,int *,int *) ;int (* op_f ) (int *,int *,int *) ;int (* op_p ) (int *,int *,int *) ;} ;


 scalar_t__ FALSE ;
 scalar_t__ IDC_RADIO_DEC ;
 int apply_int_mask (int *) ;
 TYPE_6__ calc ;
 TYPE_5__* operator_list ;
 scalar_t__ percent_mode ;
 int stub1 (int *,int *,int *) ;
 int stub2 (int *,int *,int *) ;
 int stub3 (int *,int *,int *) ;

void run_operator(calc_node_t *result,
                  calc_node_t *a,
                  calc_node_t *b,
                  unsigned int operation)
{
    if (calc.base == IDC_RADIO_DEC) {
        if (percent_mode) {
            percent_mode = FALSE;
            operator_list[operation].op_p(&result->number, &a->number, &b->number);
        } else
            operator_list[operation].op_f(&result->number, &a->number, &b->number);
    } else {
        operator_list[operation].op_i(&result->number, &a->number, &b->number);

        apply_int_mask(&result->number);
    }
}
