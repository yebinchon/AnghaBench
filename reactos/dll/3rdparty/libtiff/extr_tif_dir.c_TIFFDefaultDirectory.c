
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_14__ {struct TYPE_14__* fields; scalar_t__ allocated_size; } ;
struct TYPE_11__ {int * printdir; int vgetfield; int vsetfield; } ;
struct TYPE_12__ {int td_bitspersample; int td_samplesperpixel; size_t td_rowsperstrip; int td_tiledepth; int td_stripbytecountsorted; int td_imagedepth; int* td_ycbcrsubsampling; int td_ycbcrpositioning; int td_sampleformat; int td_resolutionunit; scalar_t__ td_tilelength; scalar_t__ td_tilewidth; int td_orientation; int td_threshholding; int td_fillorder; } ;
struct TYPE_13__ {scalar_t__ tif_nfieldscompat; int tif_flags; TYPE_6__* tif_fieldscompat; TYPE_1__ tif_tagmethods; int * tif_foundfield; int tif_postdecode; TYPE_2__ tif_dir; } ;
typedef int TIFFFieldArray ;
typedef TYPE_2__ TIFFDirectory ;
typedef TYPE_3__ TIFF ;


 int COMPRESSION_NONE ;
 int FILLORDER_MSB2LSB ;
 int ORIENTATION_TOPLEFT ;
 int RESUNIT_INCH ;
 int SAMPLEFORMAT_UINT ;
 int THRESHHOLD_BILEVEL ;
 int TIFFSetField (TYPE_3__*,int ,int ) ;
 int TIFFTAG_COMPRESSION ;
 int TIFF_DIRTYDIRECT ;
 int TIFF_ISTILED ;
 int YCBCRPOSITION_CENTERED ;
 int * _TIFFGetFields () ;
 int _TIFFNoPostDecode ;
 int _TIFFSetupFields (TYPE_3__*,int const*) ;
 int _TIFFVGetField ;
 int _TIFFVSetField ;
 int _TIFFextender (TYPE_3__*) ;
 int _TIFFfree (TYPE_6__*) ;
 int _TIFFmemset (TYPE_2__*,int ,int) ;
 int stub1 (TYPE_3__*) ;

int
TIFFDefaultDirectory(TIFF* tif)
{
 register TIFFDirectory* td = &tif->tif_dir;
 const TIFFFieldArray* tiffFieldArray;

 tiffFieldArray = _TIFFGetFields();
 _TIFFSetupFields(tif, tiffFieldArray);

 _TIFFmemset(td, 0, sizeof (*td));
 td->td_fillorder = FILLORDER_MSB2LSB;
 td->td_bitspersample = 1;
 td->td_threshholding = THRESHHOLD_BILEVEL;
 td->td_orientation = ORIENTATION_TOPLEFT;
 td->td_samplesperpixel = 1;
 td->td_rowsperstrip = (uint32) -1;
 td->td_tilewidth = 0;
 td->td_tilelength = 0;
 td->td_tiledepth = 1;
 td->td_stripbytecountsorted = 1;
 td->td_resolutionunit = RESUNIT_INCH;
 td->td_sampleformat = SAMPLEFORMAT_UINT;
 td->td_imagedepth = 1;
 td->td_ycbcrsubsampling[0] = 2;
 td->td_ycbcrsubsampling[1] = 2;
 td->td_ycbcrpositioning = YCBCRPOSITION_CENTERED;
 tif->tif_postdecode = _TIFFNoPostDecode;
 tif->tif_foundfield = ((void*)0);
 tif->tif_tagmethods.vsetfield = _TIFFVSetField;
 tif->tif_tagmethods.vgetfield = _TIFFVGetField;
 tif->tif_tagmethods.printdir = ((void*)0);





 if (tif->tif_nfieldscompat > 0) {
  uint32 i;

  for (i = 0; i < tif->tif_nfieldscompat; i++) {
    if (tif->tif_fieldscompat[i].allocated_size)
      _TIFFfree(tif->tif_fieldscompat[i].fields);
  }
  _TIFFfree(tif->tif_fieldscompat);
  tif->tif_nfieldscompat = 0;
  tif->tif_fieldscompat = ((void*)0);
 }
 if (_TIFFextender)
  (*_TIFFextender)(tif);
 (void) TIFFSetField(tif, TIFFTAG_COMPRESSION, COMPRESSION_NONE);
 tif->tif_flags &= ~TIFF_DIRTYDIRECT;






 tif->tif_flags &= ~TIFF_ISTILED;

 return (1);
}
