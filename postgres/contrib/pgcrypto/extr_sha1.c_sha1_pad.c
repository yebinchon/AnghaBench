
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* b8; } ;
struct TYPE_3__ {int * b8; } ;
struct sha1_ctxt {TYPE_2__ c; TYPE_1__ m; } ;


 int COUNT ;
 int PUTPAD (int) ;
 int memset (int *,int ,size_t) ;
 int sha1_step (struct sha1_ctxt*) ;

void
sha1_pad(struct sha1_ctxt *ctxt)
{
 size_t padlen;
 size_t padstart;

 PUTPAD(0x80);

 padstart = COUNT % 64;
 padlen = 64 - padstart;
 if (padlen < 8)
 {
  memset(&ctxt->m.b8[padstart], 0, padlen);
  COUNT += padlen;
  COUNT %= 64;
  sha1_step(ctxt);
  padstart = COUNT % 64;
  padlen = 64 - padstart;
 }
 memset(&ctxt->m.b8[padstart], 0, padlen - 8);
 COUNT += (padlen - 8);
 COUNT %= 64;
 PUTPAD(ctxt->c.b8[7]);
 PUTPAD(ctxt->c.b8[6]);
 PUTPAD(ctxt->c.b8[5]);
 PUTPAD(ctxt->c.b8[4]);
 PUTPAD(ctxt->c.b8[3]);
 PUTPAD(ctxt->c.b8[2]);
 PUTPAD(ctxt->c.b8[1]);
 PUTPAD(ctxt->c.b8[0]);

}
