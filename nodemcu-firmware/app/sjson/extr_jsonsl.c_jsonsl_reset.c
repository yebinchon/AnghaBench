
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* jsonsl_t ;
struct TYPE_3__ {int can_insert; scalar_t__ expecting; scalar_t__ in_escape; scalar_t__ stopfl; scalar_t__ level; scalar_t__ pos; scalar_t__ tok_last; } ;



void jsonsl_reset(jsonsl_t jsn)
{
    jsn->tok_last = 0;
    jsn->can_insert = 1;
    jsn->pos = 0;
    jsn->level = 0;
    jsn->stopfl = 0;
    jsn->in_escape = 0;
    jsn->expecting = 0;
}
