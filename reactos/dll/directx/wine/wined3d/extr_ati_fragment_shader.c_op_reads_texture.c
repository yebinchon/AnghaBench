
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct texture_stage_op {int carg0; int carg1; int carg2; int aarg0; int aarg1; int aarg2; scalar_t__ cop; } ;
typedef int BOOL ;


 int WINED3DTA_SELECTMASK ;
 int WINED3DTA_TEXTURE ;
 scalar_t__ WINED3D_TOP_BLEND_TEXTURE_ALPHA ;

__attribute__((used)) static BOOL op_reads_texture(const struct texture_stage_op *op)
{
    return (op->carg0 & WINED3DTA_SELECTMASK) == WINED3DTA_TEXTURE
            || (op->carg1 & WINED3DTA_SELECTMASK) == WINED3DTA_TEXTURE
            || (op->carg2 & WINED3DTA_SELECTMASK) == WINED3DTA_TEXTURE
            || (op->aarg0 & WINED3DTA_SELECTMASK) == WINED3DTA_TEXTURE
            || (op->aarg1 & WINED3DTA_SELECTMASK) == WINED3DTA_TEXTURE
            || (op->aarg2 & WINED3DTA_SELECTMASK) == WINED3DTA_TEXTURE
            || op->cop == WINED3D_TOP_BLEND_TEXTURE_ALPHA;
}
