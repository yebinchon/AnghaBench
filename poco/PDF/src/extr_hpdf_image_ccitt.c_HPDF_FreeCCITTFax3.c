
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _HPDF_CCITT_Data {TYPE_1__* tif_rawdata; TYPE_1__* tif_data; } ;
struct TYPE_3__ {struct TYPE_3__* runs; struct TYPE_3__* refline; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__ HPDF_Fax3CodecState ;


 int HPDF_OK ;
 int free (TYPE_1__*) ;

__attribute__((used)) static HPDF_STATUS HPDF_FreeCCITTFax3(struct _HPDF_CCITT_Data *pData)
{
 if(pData->tif_data!=((void*)0)) {
  HPDF_Fax3CodecState* esp=pData->tif_data;
  if(esp->refline!=((void*)0)) {
   free(esp->refline);
   esp->refline=((void*)0);
  }
  if(esp->runs!=((void*)0)) {
   free(esp->runs);
   esp->runs=((void*)0);
  }
  free(pData->tif_data);
  pData->tif_data=((void*)0);
 }
 if(pData->tif_rawdata!=((void*)0)) {
  free(pData->tif_rawdata);
  pData->tif_rawdata=((void*)0);
 }
 return HPDF_OK;
}
