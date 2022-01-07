
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_p_ma; } ;


 int EMSG (int ) ;
 int FALSE ;
 int TRUE ;
 int _ (int ) ;
 TYPE_1__* curbuf ;
 int e_modifiable ;
 int e_sandbox ;
 int e_secure ;
 scalar_t__ sandbox ;
 scalar_t__ textlock ;

int
undo_allowed()
{

    if (!curbuf->b_p_ma)
    {
 EMSG(_(e_modifiable));
 return FALSE;
    }
    if (textlock != 0)
    {
 EMSG(_(e_secure));
 return FALSE;
    }

    return TRUE;
}
