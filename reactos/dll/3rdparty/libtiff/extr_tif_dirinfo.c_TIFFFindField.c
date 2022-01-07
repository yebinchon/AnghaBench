
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_7__ {TYPE_1__ const* tif_foundfield; int tif_nfields; int tif_fields; } ;
struct TYPE_6__ {scalar_t__ field_tag; scalar_t__ field_type; int * member_11; int * member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ TIFFField ;
typedef scalar_t__ TIFFDataType ;
typedef TYPE_2__ TIFF ;


 scalar_t__ TIFF_ANY ;
 int TIFF_NOTYPE ;
 scalar_t__ bsearch (TYPE_1__**,int ,int ,int,int ) ;
 int tagCompare ;

const TIFFField*
TIFFFindField(TIFF* tif, uint32 tag, TIFFDataType dt)
{
 TIFFField key = {0, 0, 0, TIFF_NOTYPE, 0, 0, 0, 0, 0, 0, ((void*)0), ((void*)0)};
 TIFFField* pkey = &key;
 const TIFFField **ret;
 if (tif->tif_foundfield && tif->tif_foundfield->field_tag == tag &&
     (dt == TIFF_ANY || dt == tif->tif_foundfield->field_type))
  return tif->tif_foundfield;


 if (!tif->tif_fields)
  return ((void*)0);



 key.field_tag = tag;
 key.field_type = dt;

 ret = (const TIFFField **) bsearch(&pkey, tif->tif_fields,
        tif->tif_nfields,
        sizeof(TIFFField *), tagCompare);
 return tif->tif_foundfield = (ret ? *ret : ((void*)0));
}
