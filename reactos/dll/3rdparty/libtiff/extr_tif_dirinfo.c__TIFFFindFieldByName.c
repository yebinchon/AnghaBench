
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__ const* tif_foundfield; int tif_nfields; int tif_fields; } ;
struct TYPE_6__ {char* field_name; scalar_t__ field_type; int * member_11; int * member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ TIFFField ;
typedef scalar_t__ TIFFDataType ;
typedef TYPE_2__ TIFF ;


 scalar_t__ TIFF_ANY ;
 int TIFF_NOTYPE ;
 scalar_t__ streq (char*,char const*) ;
 int tagNameCompare ;
 scalar_t__ td_lfind (TYPE_1__**,int ,int *,int,int ) ;

__attribute__((used)) static const TIFFField*
_TIFFFindFieldByName(TIFF* tif, const char *field_name, TIFFDataType dt)
{
 TIFFField key = {0, 0, 0, TIFF_NOTYPE, 0, 0, 0, 0, 0, 0, ((void*)0), ((void*)0)};
 TIFFField* pkey = &key;
 const TIFFField **ret;
 if (tif->tif_foundfield
     && streq(tif->tif_foundfield->field_name, field_name)
     && (dt == TIFF_ANY || dt == tif->tif_foundfield->field_type))
  return (tif->tif_foundfield);


 if (!tif->tif_fields)
  return ((void*)0);



 key.field_name = (char *)field_name;
 key.field_type = dt;

 ret = (const TIFFField **)
            td_lfind(&pkey, tif->tif_fields, &tif->tif_nfields,
                     sizeof(TIFFField *), tagNameCompare);

 return tif->tif_foundfield = (ret ? *ret : ((void*)0));
}
