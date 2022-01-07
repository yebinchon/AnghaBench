
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int esil; } ;
typedef TYPE_1__ RAnalOp ;


 int V810_FLAG_CY ;
 int V810_FLAG_OV ;
 int V810_FLAG_S ;
 int V810_FLAG_Z ;
 int r_strbuf_append (int *,char*) ;

__attribute__((used)) static void clear_flags(RAnalOp *op, int flags) {
 if (flags & V810_FLAG_CY) {
  r_strbuf_append (&op->esil, ",0,cy,:=");
 }
 if (flags & V810_FLAG_OV) {
  r_strbuf_append (&op->esil, ",0,ov,:=");
 }
 if (flags & V810_FLAG_S) {
  r_strbuf_append (&op->esil, ",0,s,:=");
 }
 if (flags & V810_FLAG_Z) {
  r_strbuf_append (&op->esil, ",0,z,:=");
 }
}
