
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ list; int * singleton; } ;
struct TYPE_5__ {scalar_t__ list; int * next; int * value; } ;
typedef int JsonbValue ;
typedef TYPE_1__ JsonValueListIterator ;
typedef TYPE_2__ JsonValueList ;


 scalar_t__ NIL ;
 scalar_t__ linitial (scalar_t__) ;
 int * list_second_cell (scalar_t__) ;

__attribute__((used)) static void
JsonValueListInitIterator(const JsonValueList *jvl, JsonValueListIterator *it)
{
 if (jvl->singleton)
 {
  it->value = jvl->singleton;
  it->list = NIL;
  it->next = ((void*)0);
 }
 else if (jvl->list != NIL)
 {
  it->value = (JsonbValue *) linitial(jvl->list);
  it->list = jvl->list;
  it->next = list_second_cell(jvl->list);
 }
 else
 {
  it->value = ((void*)0);
  it->list = NIL;
  it->next = ((void*)0);
 }
}
