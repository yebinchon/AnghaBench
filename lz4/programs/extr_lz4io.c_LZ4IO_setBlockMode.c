
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int blockIndependence; } ;
typedef TYPE_1__ LZ4IO_prefs_t ;
typedef scalar_t__ LZ4IO_blockMode_t ;


 scalar_t__ LZ4IO_blockIndependent ;

int LZ4IO_setBlockMode(LZ4IO_prefs_t* const prefs, LZ4IO_blockMode_t blockMode)
{
    prefs->blockIndependence = (blockMode == LZ4IO_blockIndependent);
    return prefs->blockIndependence;
}
