
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct texture_stage_op {int carg0; int carg1; int carg2; int aarg0; int aarg1; int aarg2; } ;
typedef int BOOL ;


 int WINED3DTA_CONSTANT ;
 int WINED3DTA_SELECTMASK ;

__attribute__((used)) static BOOL op_reads_constant(const struct texture_stage_op *op)
{
    return (op->carg0 & WINED3DTA_SELECTMASK) == WINED3DTA_CONSTANT
            || (op->carg1 & WINED3DTA_SELECTMASK) == WINED3DTA_CONSTANT
            || (op->carg2 & WINED3DTA_SELECTMASK) == WINED3DTA_CONSTANT
            || (op->aarg0 & WINED3DTA_SELECTMASK) == WINED3DTA_CONSTANT
            || (op->aarg1 & WINED3DTA_SELECTMASK) == WINED3DTA_CONSTANT
            || (op->aarg2 & WINED3DTA_SELECTMASK) == WINED3DTA_CONSTANT;
}
