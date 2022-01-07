
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ list; int * singleton; } ;
typedef int JsonbValue ;
typedef TYPE_1__ JsonValueList ;


 scalar_t__ lappend (scalar_t__,int *) ;
 scalar_t__ list_make2 (int *,int *) ;

__attribute__((used)) static void
JsonValueListAppend(JsonValueList *jvl, JsonbValue *jbv)
{
 if (jvl->singleton)
 {
  jvl->list = list_make2(jvl->singleton, jbv);
  jvl->singleton = ((void*)0);
 }
 else if (!jvl->list)
  jvl->singleton = jbv;
 else
  jvl->list = lappend(jvl->list, jbv);
}
