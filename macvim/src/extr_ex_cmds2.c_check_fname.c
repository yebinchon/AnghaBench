
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * b_ffname; } ;


 int EMSG (int ) ;
 int FAIL ;
 int OK ;
 int _ (int ) ;
 TYPE_1__* curbuf ;
 int e_noname ;

int
check_fname()
{
    if (curbuf->b_ffname == ((void*)0))
    {
 EMSG(_(e_noname));
 return FAIL;
    }
    return OK;
}
