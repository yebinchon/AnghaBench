
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ut8 ;
typedef int buf_asm ;
struct TYPE_10__ {TYPE_5__* bin; } ;
struct TYPE_16__ {int pc; TYPE_1__ binb; } ;
struct TYPE_15__ {int size; int buf_asm; } ;
struct TYPE_14__ {TYPE_3__* cur; } ;
struct TYPE_13__ {scalar_t__ name; } ;
struct TYPE_12__ {TYPE_2__* o; } ;
struct TYPE_11__ {int * bin_obj; TYPE_4__* plugin; } ;
typedef TYPE_4__ RBinPlugin ;
typedef int RBinJavaObj ;
typedef TYPE_5__ RBin ;
typedef TYPE_6__ RAsmOp ;
typedef TYPE_7__ RAsm ;


 int r_java_disasm (int *,int ,int const*,int,char*,int) ;
 int r_strbuf_set (int *,char*) ;
 int strcmp (scalar_t__,char*) ;

__attribute__((used)) static int disassemble(RAsm *a, RAsmOp *op, const ut8 *buf, int len) {
 RBinJavaObj *obj = ((void*)0);
 RBin *bin = a->binb.bin;
 RBinPlugin *plugin = bin && bin->cur && bin->cur->o ?
  bin->cur->o->plugin : ((void*)0);
 if (plugin && plugin->name) {
  if (!strcmp (plugin->name, "java")) {
   obj = bin->cur->o->bin_obj;

  }
 }
 char buf_asm[256];
 op->size = r_java_disasm (obj, a->pc, buf, len, buf_asm, sizeof (buf_asm));
 r_strbuf_set (&op->buf_asm, buf_asm);
 return op->size;
}
