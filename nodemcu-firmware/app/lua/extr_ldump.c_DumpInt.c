
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sizeof_int; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
typedef TYPE_2__ DumpState ;


 int DumpIntWithSize (int,int ,TYPE_2__*) ;

__attribute__((used)) static void DumpInt(int x, DumpState* D)
{
 DumpIntWithSize(x,D->target.sizeof_int,D);
}
