
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field_type; } ;
typedef TYPE_1__ TIFFField ;
typedef int TIFFDataType ;



TIFFDataType
TIFFFieldDataType(const TIFFField* fip)
{
 return fip->field_type;
}
