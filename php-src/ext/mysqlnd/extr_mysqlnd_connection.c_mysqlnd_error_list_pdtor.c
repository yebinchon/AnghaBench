
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;
typedef TYPE_1__ MYSQLND_ERROR_LIST_ELEMENT ;


 int DBG_ENTER (char*) ;
 int DBG_VOID_RETURN ;
 int TRUE ;
 int mnd_pefree (scalar_t__,int ) ;

__attribute__((used)) static void
mysqlnd_error_list_pdtor(void * pDest)
{
 MYSQLND_ERROR_LIST_ELEMENT * element = (MYSQLND_ERROR_LIST_ELEMENT *) pDest;

 DBG_ENTER("mysqlnd_error_list_pdtor");
 if (element->error) {
  mnd_pefree(element->error, TRUE);
 }
 DBG_VOID_RETURN;
}
