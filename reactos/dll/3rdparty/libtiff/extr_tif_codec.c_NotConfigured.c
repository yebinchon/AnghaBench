
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* tif_setupencode; void* tif_encodestatus; void* tif_setupdecode; void* tif_decodestatus; void* tif_fixuptags; } ;
typedef TYPE_1__ TIFF ;


 void* FALSE ;
 void* _notConfigured ;

__attribute__((used)) static int
NotConfigured(TIFF* tif, int scheme)
{
 (void) scheme;

 tif->tif_fixuptags = _notConfigured;
 tif->tif_decodestatus = FALSE;
 tif->tif_setupdecode = _notConfigured;
 tif->tif_encodestatus = FALSE;
 tif->tif_setupencode = _notConfigured;
 return (1);
}
