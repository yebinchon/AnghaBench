
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _HPDF_CCITT_Data {scalar_t__ tif_rawcc; int tif_rawdata; int tif_rawcp; int dst; } ;
typedef int HPDF_STATUS ;


 scalar_t__ HPDF_CCITT_AppendToStream (int ,int ,scalar_t__) ;
 scalar_t__ HPDF_OK ;

__attribute__((used)) static HPDF_STATUS
HPDF_CCITT_FlushData(struct _HPDF_CCITT_Data *pData)
{
 if (pData->tif_rawcc > 0) {




  if (HPDF_CCITT_AppendToStream(pData->dst,
      pData->tif_rawdata, pData->tif_rawcc)!=HPDF_OK)
   return 1;
  pData->tif_rawcc = 0;
  pData->tif_rawcp = pData->tif_rawdata;
 }
 return HPDF_OK;
}
