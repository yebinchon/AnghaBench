
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* val; int * keyword; } ;
typedef TYPE_1__ PQconninfoOption ;


 int free (TYPE_1__*) ;

void
PQconninfoFree(PQconninfoOption *connOptions)
{
 PQconninfoOption *option;

 if (connOptions == ((void*)0))
  return;

 for (option = connOptions; option->keyword != ((void*)0); option++)
 {
  if (option->val != ((void*)0))
   free(option->val);
 }
 free(connOptions);
}
