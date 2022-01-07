
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
typedef int buf ;
struct TYPE_8__ {int len; int name; } ;
struct TYPE_7__ {int big_endian; } ;
struct TYPE_6__ {int size; int buf; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 TYPE_3__* dalvik_opcodes ;
 int r_strbuf_setbin (int *,int *,int) ;
 int r_write_ble32 (int *,int,int ) ;
 char* strchr (char const*,char) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int dalvik_assemble(RAsm *a, RAsmOp *op, const char *buf) {
 int i;
 char *p = strchr (buf, ' ');
 if (p) {
  *p = 0;
 }

 for (i = 0; i < 256; i++) {
  if (!strcmp (dalvik_opcodes[i].name, buf)) {
   ut8 buf[4];
   r_write_ble32 (buf, i, a->big_endian);
   r_strbuf_setbin (&op->buf, buf, sizeof (buf));
   op->size = dalvik_opcodes[i].len;
   return op->size;
  }
 }
 return 0;
}
