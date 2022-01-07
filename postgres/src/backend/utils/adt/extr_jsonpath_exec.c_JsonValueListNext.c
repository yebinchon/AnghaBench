
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * value; scalar_t__ next; int list; } ;
typedef int JsonbValue ;
typedef TYPE_1__ JsonValueListIterator ;
typedef int JsonValueList ;


 int * lfirst (scalar_t__) ;
 scalar_t__ lnext (int ,scalar_t__) ;

__attribute__((used)) static JsonbValue *
JsonValueListNext(const JsonValueList *jvl, JsonValueListIterator *it)
{
 JsonbValue *result = it->value;

 if (it->next)
 {
  it->value = lfirst(it->next);
  it->next = lnext(it->list, it->next);
 }
 else
 {
  it->value = ((void*)0);
 }

 return result;
}
