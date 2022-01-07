
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_3__ {int offset; int shift; int mask; } ;
typedef TYPE_1__ rsp_op_escape ;
typedef int rsp_instruction_priv ;


 TYPE_1__* rsp_escapes_table ;
 int const* rsp_op_table ;

__attribute__((used)) static const rsp_instruction_priv* rsp_decode_priv(ut32 iw) {
 const rsp_op_escape* escape;


 if (iw == 0) {
  return &rsp_op_table[352];
 }

 escape = &rsp_escapes_table[(iw >> 25)];
 return &rsp_op_table[escape->offset + ((iw >> escape->shift) & escape->mask)];
}
