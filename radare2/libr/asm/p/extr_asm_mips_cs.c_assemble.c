
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_6__ {scalar_t__ big_endian; int pc; } ;
struct TYPE_5__ {int buf; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int mips_assemble (char const*,int ,int *) ;
 scalar_t__ r_strbuf_get (int *) ;

__attribute__((used)) static int assemble(RAsm *a, RAsmOp *op, const char *str) {
 ut8 *opbuf = (ut8*)r_strbuf_get (&op->buf);
 int ret = mips_assemble (str, a->pc, opbuf);
 if (a->big_endian) {
  ut8 *buf = opbuf;
  ut8 tmp = buf[0];
  buf[0] = buf[3];
  buf[3] = tmp;
  tmp = buf[1];
  buf[1] = buf[2];
  buf[2] = tmp;
 }
 return ret;
}
