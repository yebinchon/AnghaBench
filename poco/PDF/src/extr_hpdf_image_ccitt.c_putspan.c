
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int code; unsigned int length; int runlen; } ;
typedef TYPE_1__ tableentry ;
struct _HPDF_CCITT_Data {int dummy; } ;
typedef int int32 ;
struct TYPE_6__ {unsigned int bit; int data; } ;
typedef TYPE_2__ HPDF_Fax3CodecState ;


 int DEBUG_PRINT (char*,int) ;
 TYPE_2__* EncoderState (struct _HPDF_CCITT_Data*) ;
 int _PutBits (struct _HPDF_CCITT_Data*,unsigned int,unsigned int) ;
 int assert (int) ;

__attribute__((used)) static void
putspan(struct _HPDF_CCITT_Data *pData, int32 span, const tableentry* tab)
{
 HPDF_Fax3CodecState* sp = EncoderState(pData);
 unsigned int bit = sp->bit;
 int data = sp->data;
 unsigned int code, length;

 while (span >= 2624) {
  const tableentry* te = &tab[63 + (2560>>6)];
  code = te->code, length = te->length;



  _PutBits(pData, code, length);
  span -= te->runlen;
 }
 if (span >= 64) {
  const tableentry* te = &tab[63 + (span>>6)];
  assert(te->runlen == 64*(span>>6));
  code = te->code, length = te->length;



  _PutBits(pData, code, length);
  span -= te->runlen;
 }
 code = tab[span].code, length = tab[span].length;



 _PutBits(pData, code, length);

 sp->data = data;
 sp->bit = bit;
}
