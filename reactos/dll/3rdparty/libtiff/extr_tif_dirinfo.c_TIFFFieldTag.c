
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int field_tag; } ;
typedef TYPE_1__ TIFFField ;



uint32
TIFFFieldTag(const TIFFField* fip)
{
 return fip->field_tag;
}
