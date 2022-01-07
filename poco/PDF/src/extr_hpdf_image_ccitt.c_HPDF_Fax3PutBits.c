
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _HPDF_CCITT_Data {int dummy; } ;
struct TYPE_3__ {unsigned int bit; int data; } ;
typedef TYPE_1__ HPDF_Fax3CodecState ;


 TYPE_1__* EncoderState (struct _HPDF_CCITT_Data*) ;
 int _PutBits (struct _HPDF_CCITT_Data*,unsigned int,unsigned int) ;

__attribute__((used)) static void
HPDF_Fax3PutBits(struct _HPDF_CCITT_Data *pData, unsigned int bits, unsigned int length)
{
 HPDF_Fax3CodecState* sp = EncoderState(pData);
 unsigned int bit = sp->bit;
 int data = sp->data;

 _PutBits(pData, bits, length);

 sp->data = data;
 sp->bit = bit;
}
