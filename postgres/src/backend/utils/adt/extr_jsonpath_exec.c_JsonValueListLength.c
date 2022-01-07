
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; scalar_t__ singleton; } ;
typedef TYPE_1__ JsonValueList ;


 int list_length (int ) ;

__attribute__((used)) static int
JsonValueListLength(const JsonValueList *jvl)
{
 return jvl->singleton ? 1 : list_length(jvl->list);
}
