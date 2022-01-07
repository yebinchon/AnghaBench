
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int favorDecSpeed; } ;
typedef TYPE_1__ LZ4IO_prefs_t ;



void LZ4IO_favorDecSpeed(LZ4IO_prefs_t* const prefs, int favor)
{
    prefs->favorDecSpeed = (favor!=0);
}
