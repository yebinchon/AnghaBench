
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int disp; } ;
struct TYPE_6__ {TYPE_1__ idref; int val; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ exprval_t ;






 int IDispatch_Release (int ) ;
 int jsval_release (int ) ;

__attribute__((used)) static void exprval_release(exprval_t *val)
{
    switch(val->type) {
    case 129:
        jsval_release(val->u.val);
        return;
    case 131:
        if(val->u.idref.disp)
            IDispatch_Release(val->u.idref.disp);
        return;
    case 128:
    case 130:
        return;
    }
}
