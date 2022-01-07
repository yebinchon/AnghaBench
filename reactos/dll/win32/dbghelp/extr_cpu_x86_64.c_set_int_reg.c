
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG64 ;
struct TYPE_3__ {int Rax; } ;
typedef TYPE_1__ CONTEXT ;



__attribute__((used)) static void set_int_reg(CONTEXT *context, int reg, ULONG64 val)
{
    *(&context->Rax + reg) = val;
}
