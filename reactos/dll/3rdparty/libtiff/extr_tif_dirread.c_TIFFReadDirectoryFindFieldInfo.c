
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ uint16 ;
typedef int int32 ;
struct TYPE_5__ {TYPE_1__** tif_fields; scalar_t__ tif_nfields; } ;
struct TYPE_4__ {scalar_t__ field_tag; } ;
typedef TYPE_2__ TIFF ;


 scalar_t__ FAILED_FII ;

__attribute__((used)) static void
TIFFReadDirectoryFindFieldInfo(TIFF* tif, uint16 tagid, uint32* fii)
{
 int32 ma,mb,mc;
 ma=-1;
 mc=(int32)tif->tif_nfields;
 while (1)
 {
  if (ma+1==mc)
  {
   *fii = FAILED_FII;
   return;
  }
  mb=(ma+mc)/2;
  if (tif->tif_fields[mb]->field_tag==(uint32)tagid)
   break;
  if (tif->tif_fields[mb]->field_tag<(uint32)tagid)
   ma=mb;
  else
   mc=mb;
 }
 while (1)
 {
  if (mb==0)
   break;
  if (tif->tif_fields[mb-1]->field_tag!=(uint32)tagid)
   break;
  mb--;
 }
 *fii=mb;
}
