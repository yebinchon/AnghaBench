
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * list; scalar_t__ singleton; } ;
typedef int List ;
typedef TYPE_1__ JsonValueList ;


 int * list_make1 (scalar_t__) ;

__attribute__((used)) static List *
JsonValueListGetList(JsonValueList *jvl)
{
 if (jvl->singleton)
  return list_make1(jvl->singleton);

 return jvl->list;
}
