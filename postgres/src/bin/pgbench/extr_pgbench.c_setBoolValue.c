
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bval; } ;
struct TYPE_5__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ PgBenchValue ;


 int PGBT_BOOLEAN ;

__attribute__((used)) static void
setBoolValue(PgBenchValue *pv, bool bval)
{
 pv->type = PGBT_BOOLEAN;
 pv->u.bval = bval;
}
