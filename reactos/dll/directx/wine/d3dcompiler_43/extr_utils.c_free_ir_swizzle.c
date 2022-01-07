
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_swizzle {int val; } ;


 int d3dcompiler_free (struct hlsl_ir_swizzle*) ;
 int free_instr (int ) ;

__attribute__((used)) static void free_ir_swizzle(struct hlsl_ir_swizzle *swizzle)
{
    free_instr(swizzle->val);
    d3dcompiler_free(swizzle);
}
