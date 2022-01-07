
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_reg {scalar_t__ regnum; } ;
struct bc_writer {scalar_t__* v_regnum; scalar_t__* t_regnum; int state; } ;
typedef int DWORD ;


 int D3DSPR_INPUT ;
 int D3DSPR_TEXTURE ;
 int E_INVALIDARG ;
 int WARN (char*) ;
 int d3dsp_register (int ,int) ;

__attribute__((used)) static DWORD map_ps_input(struct bc_writer *This,
                          const struct shader_reg *reg) {
    DWORD i;

    for(i = 0; i < 2; i++) {
        if(reg->regnum == This->v_regnum[i]) {
            return d3dsp_register( D3DSPR_INPUT, i );
        }
    }
    for(i = 0; i < 8; i++) {
        if(reg->regnum == This->t_regnum[i]) {
            return d3dsp_register( D3DSPR_TEXTURE, i );
        }
    }

    WARN("Invalid ps 1/2 varying\n");
    This->state = E_INVALIDARG;
    return 0;
}
