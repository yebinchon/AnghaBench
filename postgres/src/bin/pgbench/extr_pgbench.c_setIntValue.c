
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {int ival; } ;
struct TYPE_5__ {TYPE_1__ u; int type; } ;
typedef TYPE_2__ PgBenchValue ;


 int PGBT_INT ;

__attribute__((used)) static void
setIntValue(PgBenchValue *pv, int64 ival)
{
 pv->type = PGBT_INT;
 pv->u.ival = ival;
}
