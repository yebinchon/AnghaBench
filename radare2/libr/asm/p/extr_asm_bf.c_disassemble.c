
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_3__ {int size; int buf_asm; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int r_strbuf_set (int *,char const*) ;
 char* sdb_fmt (char const*,char const*,int) ;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 const ut8 *b;
 int rep = 1;


 if (*buf != 0x00 && *buf != 0xff) {
  for (b = &buf[1]; b < buf + len && *b == *buf; b++) {
   rep++;
  }
 }
 const char *buf_asm = "invalid";
 switch (*buf) {
 case '[':
  buf_asm = "while [ptr]";
  break;
 case ']':
  buf_asm = "loop";
  break;
 case '>':
  buf_asm = (rep > 1)? "add ptr": "inc ptr";
  break;
 case '<':
  buf_asm = (rep > 1)? "sub ptr": "dec ptr";
  break;
 case '+':
  buf_asm = (rep > 1)? "add [ptr]": "inc [ptr]";
  break;
 case '-':
  buf_asm = (rep > 1)? "sub [ptr]": "dec [ptr]";
  break;
 case ',':
  buf_asm = "in [ptr]";
  break;
 case '.':
  buf_asm = "out [ptr]";
  break;
 case 0xff:
 case 0x00:
  buf_asm = "trap";
  break;
 default:
  buf_asm = "nop";
  break;
 }

 if (rep > 1) {


  const char *fmt = strchr (buf_asm, ' ')? "%s, %d": "%s %d";
  buf_asm = sdb_fmt (fmt, buf_asm, rep);
 }
 r_strbuf_set (&op->buf_asm, buf_asm);
 op->size = rep;
 return rep;
}
