
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ival; } ;
struct TYPE_5__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ PgBenchValue ;


 int PGBT_NULL ;

__attribute__((used)) static void
setNullValue(PgBenchValue *pv)
{
 pv->type = PGBT_NULL;
 pv->u.ival = 0;
}
