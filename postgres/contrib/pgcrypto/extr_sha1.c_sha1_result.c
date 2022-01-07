
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_2__ {int * b8; } ;
struct sha1_ctxt {TYPE_1__ h; } ;


 int memmove (int *,int *,int) ;
 int sha1_pad (struct sha1_ctxt*) ;

void
sha1_result(struct sha1_ctxt *ctxt, uint8 *digest0)
{
 uint8 *digest;

 digest = (uint8 *) digest0;
 sha1_pad(ctxt);



 digest[0] = ctxt->h.b8[3];
 digest[1] = ctxt->h.b8[2];
 digest[2] = ctxt->h.b8[1];
 digest[3] = ctxt->h.b8[0];
 digest[4] = ctxt->h.b8[7];
 digest[5] = ctxt->h.b8[6];
 digest[6] = ctxt->h.b8[5];
 digest[7] = ctxt->h.b8[4];
 digest[8] = ctxt->h.b8[11];
 digest[9] = ctxt->h.b8[10];
 digest[10] = ctxt->h.b8[9];
 digest[11] = ctxt->h.b8[8];
 digest[12] = ctxt->h.b8[15];
 digest[13] = ctxt->h.b8[14];
 digest[14] = ctxt->h.b8[13];
 digest[15] = ctxt->h.b8[12];
 digest[16] = ctxt->h.b8[19];
 digest[17] = ctxt->h.b8[18];
 digest[18] = ctxt->h.b8[17];
 digest[19] = ctxt->h.b8[16];

}
