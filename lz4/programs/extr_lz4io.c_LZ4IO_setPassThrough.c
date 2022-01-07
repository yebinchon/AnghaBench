
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int passThrough; } ;
typedef TYPE_1__ LZ4IO_prefs_t ;



int LZ4IO_setPassThrough(LZ4IO_prefs_t* const prefs, int yes)
{
   prefs->passThrough = (yes!=0);
   return prefs->passThrough;
}
