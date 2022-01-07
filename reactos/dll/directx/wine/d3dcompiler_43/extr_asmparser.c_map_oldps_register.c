
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct shader_reg {int type; int regnum; } const shader_reg ;
typedef int BOOL ;


 int BWRITERSPR_INPUT ;
 int BWRITERSPR_TEMP ;

 int FIXME (char*,int ) ;
 int T0_REG ;
 int T0_VARYING ;
 int T1_REG ;
 int T1_VARYING ;
 int T2_REG ;
 int T2_VARYING ;
 int T3_REG ;
 int T3_VARYING ;
 int T4_VARYING ;
 int T5_VARYING ;
 int T6_VARYING ;
 int T7_VARYING ;

__attribute__((used)) static struct shader_reg map_oldps_register(const struct shader_reg *reg, BOOL tex_varying) {
    struct shader_reg ret;
    switch(reg->type) {
        case 128:
            if(tex_varying) {
                ret = *reg;
                ret.type = BWRITERSPR_INPUT;
                switch(reg->regnum) {
                    case 0: ret.regnum = T0_VARYING; break;
                    case 1: ret.regnum = T1_VARYING; break;
                    case 2: ret.regnum = T2_VARYING; break;
                    case 3: ret.regnum = T3_VARYING; break;
                    case 4: ret.regnum = T4_VARYING; break;
                    case 5: ret.regnum = T5_VARYING; break;
                    case 6: ret.regnum = T6_VARYING; break;
                    case 7: ret.regnum = T7_VARYING; break;
                    default:
                        FIXME("Unexpected TEXTURE register t%u\n", reg->regnum);
                        return *reg;
                }
                return ret;
            } else {
                ret = *reg;
                ret.type = BWRITERSPR_TEMP;
                switch(reg->regnum) {
                    case 0: ret.regnum = T0_REG; break;
                    case 1: ret.regnum = T1_REG; break;
                    case 2: ret.regnum = T2_REG; break;
                    case 3: ret.regnum = T3_REG; break;
                    default:
                        FIXME("Unexpected TEXTURE register t%u\n", reg->regnum);
                        return *reg;
                }
                return ret;
            }




        default: return *reg;
    }
}
