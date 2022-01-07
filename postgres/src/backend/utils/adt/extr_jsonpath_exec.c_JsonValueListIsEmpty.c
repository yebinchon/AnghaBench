
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; int singleton; } ;
typedef TYPE_1__ JsonValueList ;


 scalar_t__ list_length (int ) ;

__attribute__((used)) static bool
JsonValueListIsEmpty(JsonValueList *jvl)
{
 return !jvl->singleton && list_length(jvl->list) <= 0;
}
