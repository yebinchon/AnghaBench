
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lMagnitude; } ;
typedef TYPE_1__* LPCDICONSTANTFORCE ;


 int TRACE (char*,int ) ;

__attribute__((used)) static void _dump_DICONSTANTFORCE(LPCDICONSTANTFORCE frc)
{
    TRACE("Constant force has magnitude %d\n", frc->lMagnitude);
}
