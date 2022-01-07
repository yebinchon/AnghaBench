
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_12__ {size_t tif_nfields; TYPE_1__** tif_fields; int tif_clientdata; int * tif_foundfield; } ;
struct TYPE_11__ {int field_tag; } ;
typedef TYPE_1__ TIFFField ;
typedef TYPE_2__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*) ;
 TYPE_1__* TIFFFindField (TYPE_2__*,int ,int ) ;
 int TIFF_ANY ;
 scalar_t__ _TIFFCheckMalloc (TYPE_2__*,size_t,int,char const*) ;
 scalar_t__ _TIFFCheckRealloc (TYPE_2__*,TYPE_1__**,size_t,int,char const*) ;
 int qsort (TYPE_1__**,size_t,int,int ) ;
 int tagCompare ;

int
_TIFFMergeFields(TIFF* tif, const TIFFField info[], uint32 n)
{
 static const char module[] = "_TIFFMergeFields";
 static const char reason[] = "for fields array";

 uint32 i;

        tif->tif_foundfield = ((void*)0);

 if (tif->tif_fields && tif->tif_nfields > 0) {
  tif->tif_fields = (TIFFField**)
   _TIFFCheckRealloc(tif, tif->tif_fields,
       (tif->tif_nfields + n),
       sizeof(TIFFField *), reason);
 } else {
  tif->tif_fields = (TIFFField **)
   _TIFFCheckMalloc(tif, n, sizeof(TIFFField *),
      reason);
 }
 if (!tif->tif_fields) {
  TIFFErrorExt(tif->tif_clientdata, module,
        "Failed to allocate fields array");
  return 0;
 }


 for (i = 0; i < n; i++) {
  const TIFFField *fip =
   TIFFFindField(tif, info[i].field_tag, TIFF_ANY);


  if (!fip) {
                        tif->tif_fields[tif->tif_nfields] = (TIFFField *) (info+i);
                        tif->tif_nfields++;
                }
 }


 qsort(tif->tif_fields, tif->tif_nfields,
       sizeof(TIFFField *), tagCompare);

 return n;
}
