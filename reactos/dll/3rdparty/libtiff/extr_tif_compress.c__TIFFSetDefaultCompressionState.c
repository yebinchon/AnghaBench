
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tif_flags; int tif_deftilesize; int tif_defstripsize; void* tif_cleanup; int tif_seek; void* tif_close; int tif_encodetile; int tif_encodestrip; int tif_encoderow; void* tif_postencode; void* tif_preencode; void* tif_setupencode; void* tif_encodestatus; int tif_decodetile; int tif_decodestrip; int tif_decoderow; void* tif_predecode; void* tif_setupdecode; void* tif_decodestatus; int tif_fixuptags; } ;
typedef TYPE_1__ TIFF ;


 int TIFF_NOBITREV ;
 int TIFF_NOREADRAW ;
 void* TRUE ;
 int _TIFFDefaultStripSize ;
 int _TIFFDefaultTileSize ;
 int _TIFFNoFixupTags ;
 void* _TIFFNoPreCode ;
 int _TIFFNoRowDecode ;
 int _TIFFNoRowEncode ;
 int _TIFFNoSeek ;
 int _TIFFNoStripDecode ;
 int _TIFFNoStripEncode ;
 int _TIFFNoTileDecode ;
 int _TIFFNoTileEncode ;
 void* _TIFFtrue ;
 void* _TIFFvoid ;

void
_TIFFSetDefaultCompressionState(TIFF* tif)
{
 tif->tif_fixuptags = _TIFFNoFixupTags;
 tif->tif_decodestatus = TRUE;
 tif->tif_setupdecode = _TIFFtrue;
 tif->tif_predecode = _TIFFNoPreCode;
 tif->tif_decoderow = _TIFFNoRowDecode;
 tif->tif_decodestrip = _TIFFNoStripDecode;
 tif->tif_decodetile = _TIFFNoTileDecode;
 tif->tif_encodestatus = TRUE;
 tif->tif_setupencode = _TIFFtrue;
 tif->tif_preencode = _TIFFNoPreCode;
 tif->tif_postencode = _TIFFtrue;
 tif->tif_encoderow = _TIFFNoRowEncode;
 tif->tif_encodestrip = _TIFFNoStripEncode;
 tif->tif_encodetile = _TIFFNoTileEncode;
 tif->tif_close = _TIFFvoid;
 tif->tif_seek = _TIFFNoSeek;
 tif->tif_cleanup = _TIFFvoid;
 tif->tif_defstripsize = _TIFFDefaultStripSize;
 tif->tif_deftilesize = _TIFFDefaultTileSize;
 tif->tif_flags &= ~(TIFF_NOBITREV|TIFF_NOREADRAW);
}
