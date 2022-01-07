
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field_writecount; } ;
typedef TYPE_1__ TIFFField ;



int
TIFFFieldWriteCount(const TIFFField* fip)
{
 return fip->field_writecount;
}
