
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ launcher_pid; } ;
typedef int Datum ;


 TYPE_1__* LogicalRepCtx ;

__attribute__((used)) static void
logicalrep_launcher_onexit(int code, Datum arg)
{
 LogicalRepCtx->launcher_pid = 0;
}
