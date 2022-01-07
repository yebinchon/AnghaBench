
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ aarch64_opcode ;


 int FALSE ;
 int F_COND ;
 int F_FPTYPE ;
 int F_GPRSIZE_IN_Q ;
 int F_LDS_SIZE ;
 int F_LSE_SZ ;
 int F_MISC ;
 int F_N ;
 int F_SF ;
 int F_SIZEQ ;
 int F_SSIZE ;
 int F_T ;
 int TRUE ;

__attribute__((used)) static inline bfd_boolean
opcode_has_special_coder (const aarch64_opcode *opcode)
{
  return (opcode->flags & (F_SF | F_LSE_SZ | F_SIZEQ | F_FPTYPE | F_SSIZE | F_T
   | F_GPRSIZE_IN_Q | F_LDS_SIZE | F_MISC | F_N | F_COND)) ? TRUE
    : FALSE;
}
