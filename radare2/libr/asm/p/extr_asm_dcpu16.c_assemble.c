
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int len; } ;
struct TYPE_4__ {TYPE_2__ buf; } ;
typedef TYPE_1__ RAsmOp ;
typedef int RAsm ;


 int dcpu16_assemble (int *,char const*) ;
 scalar_t__ r_strbuf_get (TYPE_2__*) ;

__attribute__((used)) static int assemble(RAsm *a, RAsmOp *op, const char *buf) {
 int len = dcpu16_assemble ((ut8*)r_strbuf_get (&op->buf), buf);
 op->buf.len = len;
 return len;
}
