
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* field_name; } ;
typedef TYPE_1__ TIFFField ;



const char *
TIFFFieldName(const TIFFField* fip)
{
 return fip->field_name;
}
