
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int td_customValueCount; int td_stripbytecount_entry; int td_stripoffset_entry; TYPE_1__* td_customValues; int * td_fieldsset; } ;
struct TYPE_8__ {TYPE_2__ tif_dir; } ;
struct TYPE_6__ {scalar_t__ value; } ;
typedef TYPE_2__ TIFFDirectory ;
typedef int TIFFDirEntry ;
typedef TYPE_3__ TIFF ;


 int CleanupField (int ) ;
 int FIELD_SETLONGS ;
 int FIELD_YCBCRPOSITIONING ;
 int FIELD_YCBCRSUBSAMPLING ;
 int TIFFClrFieldBit (TYPE_3__*,int ) ;
 int _TIFFfree (scalar_t__) ;
 int _TIFFmemset (int *,int ,int) ;
 int * td_colormap ;
 int td_customValues ;
 int td_inknames ;
 int td_refblackwhite ;
 int td_sampleinfo ;
 int td_smaxsamplevalue ;
 int td_sminsamplevalue ;
 int td_stripbytecount ;
 int td_stripoffset ;
 int td_subifd ;
 int * td_transferfunction ;

void
TIFFFreeDirectory(TIFF* tif)
{
 TIFFDirectory *td = &tif->tif_dir;
 int i;

 _TIFFmemset(td->td_fieldsset, 0, FIELD_SETLONGS);
 CleanupField(td_sminsamplevalue);
 CleanupField(td_smaxsamplevalue);
 CleanupField(td_colormap[0]);
 CleanupField(td_colormap[1]);
 CleanupField(td_colormap[2]);
 CleanupField(td_sampleinfo);
 CleanupField(td_subifd);
 CleanupField(td_inknames);
 CleanupField(td_refblackwhite);
 CleanupField(td_transferfunction[0]);
 CleanupField(td_transferfunction[1]);
 CleanupField(td_transferfunction[2]);
 CleanupField(td_stripoffset);
 CleanupField(td_stripbytecount);
 TIFFClrFieldBit(tif, FIELD_YCBCRSUBSAMPLING);
 TIFFClrFieldBit(tif, FIELD_YCBCRPOSITIONING);


 for( i = 0; i < td->td_customValueCount; i++ ) {
  if (td->td_customValues[i].value)
   _TIFFfree(td->td_customValues[i].value);
 }

 td->td_customValueCount = 0;
 CleanupField(td_customValues);





}
