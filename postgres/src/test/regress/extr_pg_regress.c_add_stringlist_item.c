
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int str; } ;
typedef TYPE_1__ _stringlist ;


 TYPE_1__* pg_malloc (int) ;
 int pg_strdup (char const*) ;

void
add_stringlist_item(_stringlist **listhead, const char *str)
{
 _stringlist *newentry = pg_malloc(sizeof(_stringlist));
 _stringlist *oldentry;

 newentry->str = pg_strdup(str);
 newentry->next = ((void*)0);
 if (*listhead == ((void*)0))
  *listhead = newentry;
 else
 {
  for (oldentry = *listhead; oldentry->next; oldentry = oldentry->next)
               ;
  oldentry->next = newentry;
 }
}
