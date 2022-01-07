
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int writemask; } ;
typedef struct shader_reg {int type; int regnum; TYPE_1__ u; } const shader_reg ;



 void* BWRITERSPR_OUTPUT ;





 int FIXME (char*,int ) ;
 int OD0_REG ;
 int OD1_REG ;
 int OFOG_REG ;
 int OFOG_WRITEMASK ;
 int OPOS_REG ;
 int OPTS_REG ;
 int OPTS_WRITEMASK ;
 int OT0_REG ;
 int OT1_REG ;
 int OT2_REG ;
 int OT3_REG ;
 int OT4_REG ;
 int OT5_REG ;
 int OT6_REG ;
 int OT7_REG ;

__attribute__((used)) static struct shader_reg map_oldvs_register(const struct shader_reg *reg) {
    struct shader_reg ret;
    switch(reg->type) {
        case 132:
            ret = *reg;
            ret.type = BWRITERSPR_OUTPUT;
            switch(reg->regnum) {
                case 128:
                    ret.regnum = OPOS_REG;
                    break;
                case 130:
                    ret.regnum = OFOG_REG;
                    ret.u.writemask = OFOG_WRITEMASK;
                    break;
                case 129:
                    ret.regnum = OPTS_REG;
                    ret.u.writemask = OPTS_WRITEMASK;
                    break;
                default:
                    FIXME("Unhandled RASTOUT register %u\n", reg->regnum);
                    return *reg;
            }
            return ret;

        case 131:
            ret = *reg;
            ret.type = BWRITERSPR_OUTPUT;
            switch(reg->regnum) {
                case 0: ret.regnum = OT0_REG; break;
                case 1: ret.regnum = OT1_REG; break;
                case 2: ret.regnum = OT2_REG; break;
                case 3: ret.regnum = OT3_REG; break;
                case 4: ret.regnum = OT4_REG; break;
                case 5: ret.regnum = OT5_REG; break;
                case 6: ret.regnum = OT6_REG; break;
                case 7: ret.regnum = OT7_REG; break;
                default:
                    FIXME("Unhandled TEXCRDOUT regnum %u\n", reg->regnum);
                    return *reg;
            }
            return ret;

        case 133:
            ret = *reg;
            ret.type = BWRITERSPR_OUTPUT;
            switch(reg->regnum) {
                case 0: ret.regnum = OD0_REG; break;
                case 1: ret.regnum = OD1_REG; break;
                default:
                    FIXME("Unhandled ATTROUT regnum %u\n", reg->regnum);
                    return *reg;
            }
            return ret;

        default: return *reg;
    }
}
