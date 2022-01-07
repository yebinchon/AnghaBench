
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_reg {int regnum; } ;
struct bc_writer {int dummy; } ;
typedef int DWORD ;


 int D3DSPR_TEMP ;
 int D3DSPR_TEXTURE ;
 int T0_REG ;
 int T1_REG ;
 int T2_REG ;
 int T3_REG ;
 int d3dsp_register (int ,int) ;

__attribute__((used)) static DWORD map_ps13_temp(struct bc_writer *This, const struct shader_reg *reg) {
    if(reg->regnum == T0_REG) {
        return d3dsp_register( D3DSPR_TEXTURE, 0 );
    } else if(reg->regnum == T1_REG) {
        return d3dsp_register( D3DSPR_TEXTURE, 1 );
    } else if(reg->regnum == T2_REG) {
        return d3dsp_register( D3DSPR_TEXTURE, 2 );
    } else if(reg->regnum == T3_REG) {
        return d3dsp_register( D3DSPR_TEXTURE, 3 );
    } else {
        return d3dsp_register( D3DSPR_TEMP, reg->regnum );
    }
}
