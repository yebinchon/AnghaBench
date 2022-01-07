
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tsize_t ;
typedef int tidata_t ;
struct _HPDF_CCITT_Data {int dummy; } ;
struct TYPE_4__ {scalar_t__ rowbytes; int rowpixels; } ;
struct TYPE_5__ {TYPE_1__ b; int refline; } ;
typedef int HPDF_STATUS ;
typedef TYPE_2__ HPDF_Fax3CodecState ;


 TYPE_2__* EncoderState (struct _HPDF_CCITT_Data*) ;
 scalar_t__ HPDF_Fax3Encode2DRow (struct _HPDF_CCITT_Data*,int ,int ,int ) ;
 scalar_t__ HPDF_OK ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static HPDF_STATUS
HPDF_Fax4Encode(struct _HPDF_CCITT_Data *pData, tidata_t bp, tsize_t cc )
{
 HPDF_Fax3CodecState *sp = EncoderState(pData);


 while ((long)cc > 0) {
  if (HPDF_Fax3Encode2DRow(pData, bp, sp->refline, sp->b.rowpixels)!=HPDF_OK)
   return 1;
  memcpy(sp->refline, bp, sp->b.rowbytes);
  bp += sp->b.rowbytes;
  cc -= sp->b.rowbytes;
 }
 return HPDF_OK;
}
