
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* str; struct TYPE_4__* next; } ;
typedef TYPE_1__ _stringlist ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
free_stringlist(_stringlist **listhead)
{
 if (listhead == ((void*)0) || *listhead == ((void*)0))
  return;
 if ((*listhead)->next != ((void*)0))
  free_stringlist(&((*listhead)->next));
 free((*listhead)->str);
 free(*listhead);
 *listhead = ((void*)0);
}
