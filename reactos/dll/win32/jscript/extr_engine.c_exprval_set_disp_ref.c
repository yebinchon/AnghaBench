
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; int * disp; } ;
struct TYPE_6__ {TYPE_1__ idref; } ;
struct TYPE_7__ {TYPE_2__ u; int type; } ;
typedef TYPE_3__ exprval_t ;
typedef int IDispatch ;
typedef int DISPID ;


 int EXPRVAL_IDREF ;
 int IDispatch_AddRef (int *) ;

__attribute__((used)) static inline void exprval_set_disp_ref(exprval_t *ref, IDispatch *obj, DISPID id)
{
    ref->type = EXPRVAL_IDREF;




    IDispatch_AddRef(ref->u.idref.disp = obj);

    ref->u.idref.id = id;
}
