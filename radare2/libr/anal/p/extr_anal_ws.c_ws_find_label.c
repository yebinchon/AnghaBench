
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef scalar_t__ ut64 ;
struct TYPE_10__ {scalar_t__ size; int buf_asm; } ;
struct TYPE_9__ {int desc; } ;
struct TYPE_8__ {scalar_t__ (* desc_size ) (int ) ;TYPE_2__* io; int (* read_at ) (TYPE_2__*,scalar_t__,int *,int) ;} ;
typedef TYPE_1__ RIOBind ;
typedef TYPE_2__ RIO ;
typedef TYPE_3__ RAsmOp ;


 int atoi (char const*) ;
 char* r_strbuf_get (int *) ;
 int strlen (char const*) ;
 scalar_t__ stub1 (int ) ;
 int stub2 (TYPE_2__*,scalar_t__,int *,int) ;
 int stub3 (TYPE_2__*,scalar_t__,int *,int) ;
 scalar_t__ wsdis (TYPE_3__*,int *,int) ;

__attribute__((used)) static ut64 ws_find_label(int l, RIOBind iob) {
 RIO *io = iob.io;
 ut64 cur = 0, size = iob.desc_size (io->desc);
 ut8 buf[128];
 RAsmOp aop;
 iob.read_at (iob.io, cur, buf, 128);
 while (cur <= size && wsdis (&aop, buf, 128)) {
  const char *buf_asm = r_strbuf_get (&aop.buf_asm);
  if (buf_asm && (strlen (buf_asm) > 4) && buf_asm[0] == 'm' && buf_asm[1] == 'a' && l == atoi (buf_asm + 5)) {
   return cur;
  }
  cur = cur + aop.size;
  iob.read_at (iob.io, cur, buf, 128);
 }
 return 0;
}
