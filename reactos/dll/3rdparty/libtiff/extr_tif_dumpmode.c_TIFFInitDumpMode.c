
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tif_seek; void* tif_encodetile; void* tif_encodestrip; void* tif_encoderow; void* tif_decodetile; void* tif_decodestrip; void* tif_decoderow; int tif_fixuptags; } ;
typedef TYPE_1__ TIFF ;


 int DumpFixupTags ;
 void* DumpModeDecode ;
 void* DumpModeEncode ;
 int DumpModeSeek ;

int
TIFFInitDumpMode(TIFF* tif, int scheme)
{
 (void) scheme;
 tif->tif_fixuptags = DumpFixupTags;
 tif->tif_decoderow = DumpModeDecode;
 tif->tif_decodestrip = DumpModeDecode;
 tif->tif_decodetile = DumpModeDecode;
 tif->tif_encoderow = DumpModeEncode;
 tif->tif_encodestrip = DumpModeEncode;
 tif->tif_encodetile = DumpModeEncode;
 tif->tif_seek = DumpModeSeek;
 return (1);
}
