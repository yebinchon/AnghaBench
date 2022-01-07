
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _HPDF_CCITT_Data {int dummy; } ;
struct TYPE_4__ {int rowbytes; } ;
struct TYPE_5__ {int bit; scalar_t__ line; scalar_t__ maxk; scalar_t__ k; TYPE_1__ b; scalar_t__ refline; scalar_t__ data; } ;
typedef int HPDF_STATUS ;
typedef TYPE_2__ HPDF_Fax3CodecState ;


 TYPE_2__* EncoderState (struct _HPDF_CCITT_Data*) ;
 int HPDF_OK ;
 int memset (scalar_t__,int,int ) ;

__attribute__((used)) static HPDF_STATUS
HPDF_Fax3PreEncode(struct _HPDF_CCITT_Data *pData )
{
 HPDF_Fax3CodecState* sp = EncoderState(pData);


 sp->bit = 8;
 sp->data = 0;






 if (sp->refline)
  memset(sp->refline, 0x00, sp->b.rowbytes);
 sp->k = sp->maxk = 0;
 sp->line = 0;
 return HPDF_OK;
}
