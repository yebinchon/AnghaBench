
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; int * singleton; } ;
typedef int JsonbValue ;
typedef TYPE_1__ JsonValueList ;


 int * linitial (int ) ;

__attribute__((used)) static JsonbValue *
JsonValueListHead(JsonValueList *jvl)
{
 return jvl->singleton ? jvl->singleton : linitial(jvl->list);
}
