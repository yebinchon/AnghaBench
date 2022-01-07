
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* tif_name; } ;
typedef TYPE_1__ TIFF ;



const char *
TIFFSetFileName(TIFF* tif, const char *name)
{
 const char* old_name = tif->tif_name;
 tif->tif_name = (char *)name;
 return (old_name);
}
