
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _HPDF_CCITT_Data {TYPE_1__* tif_data; } ;
struct TYPE_6__ {int * faxdcs; int * subaddress; scalar_t__ recvparams; scalar_t__ groupoptions; } ;
struct TYPE_5__ {int * runs; int * refline; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__ HPDF_Fax3CodecState ;
typedef TYPE_2__ HPDF_Fax3BaseState ;


 TYPE_1__* EncoderState (struct _HPDF_CCITT_Data*) ;
 TYPE_2__* Fax3State (struct _HPDF_CCITT_Data*) ;
 int HPDF_OK ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static HPDF_STATUS HPDF_InitCCITTFax3(struct _HPDF_CCITT_Data *pData)
{
 HPDF_Fax3BaseState* sp;
 HPDF_Fax3CodecState* esp;




 pData->tif_data = (HPDF_Fax3CodecState *)
  malloc(sizeof (HPDF_Fax3CodecState));

 if (pData->tif_data == ((void*)0)) {
  return 1;
 }

 sp = Fax3State(pData);





 sp->groupoptions = 0;
 sp->recvparams = 0;
 sp->subaddress = ((void*)0);
 sp->faxdcs = ((void*)0);

 esp = EncoderState(pData);
 esp->refline = ((void*)0);
 esp->runs = ((void*)0);

 return HPDF_OK;
}
