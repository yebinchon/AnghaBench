
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* jsonsl_t ;
struct TYPE_8__ {int levels_max; int max_callback_level; TYPE_1__* stack; } ;
struct TYPE_7__ {unsigned int level; } ;


 int jsonsl_get_size (int) ;
 int jsonsl_reset (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int ) ;

jsonsl_t jsonsl_init(jsonsl_t jsn, int nlevels)
{
    unsigned int ii;

    memset(jsn, 0, jsonsl_get_size(nlevels));
    jsn->levels_max = nlevels;
    jsn->max_callback_level = -1;
    jsonsl_reset(jsn);
    for (ii = 0; ii < jsn->levels_max; ii++) {
        jsn->stack[ii].level = ii;
    }
    return jsn;
}
