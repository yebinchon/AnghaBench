
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_entry_T ;
struct TYPE_4__ {TYPE_1__* b_u_newhead; } ;
struct TYPE_3__ {int * uh_entry; } ;


 int EMSG (int ) ;
 int _ (char*) ;
 TYPE_2__* curbuf ;

__attribute__((used)) static u_entry_T *
u_get_headentry()
{
    if (curbuf->b_u_newhead == ((void*)0) || curbuf->b_u_newhead->uh_entry == ((void*)0))
    {
 EMSG(_("E439: undo list corrupt"));
 return ((void*)0);
    }
    return curbuf->b_u_newhead->uh_entry;
}
