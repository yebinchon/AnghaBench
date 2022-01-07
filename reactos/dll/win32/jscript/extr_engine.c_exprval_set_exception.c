
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hres; } ;
struct TYPE_5__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ exprval_t ;
typedef int HRESULT ;


 int EXPRVAL_INVALID ;

__attribute__((used)) static inline void exprval_set_exception(exprval_t *val, HRESULT hres)
{
    val->type = EXPRVAL_INVALID;
    val->u.hres = hres;
}
