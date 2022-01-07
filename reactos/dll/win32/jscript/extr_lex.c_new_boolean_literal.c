
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_5__ {int bval; } ;
struct TYPE_6__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ literal_t ;
typedef int BOOL ;


 int LT_BOOL ;
 TYPE_2__* parser_alloc (int *,int) ;

literal_t *new_boolean_literal(parser_ctx_t *ctx, BOOL bval)
{
    literal_t *ret = parser_alloc(ctx, sizeof(literal_t));

    ret->type = LT_BOOL;
    ret->u.bval = bval;

    return ret;
}
