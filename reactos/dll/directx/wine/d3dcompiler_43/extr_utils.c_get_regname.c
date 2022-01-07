
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_reg {int type; int regnum; } ;
 char const* wine_dbg_sprintf (char*,int) ;

__attribute__((used)) static const char *get_regname(const struct shader_reg *reg)
{
    switch (reg->type)
    {
        case 133:
            return wine_dbg_sprintf("r%u", reg->regnum);
        case 141:
            return wine_dbg_sprintf("v%u", reg->regnum);
        case 145:
            return wine_dbg_sprintf("c%u", reg->regnum);
        case 148:
            return wine_dbg_sprintf("a%u", reg->regnum);
        case 131:
            return wine_dbg_sprintf("t%u", reg->regnum);
        case 135:
            switch (reg->regnum)
            {
                case 128: return "oPos";
                case 130: return "oFog";
                case 129: return "oPts";
                default: return "Unexpected RASTOUT";
            }
        case 147:
            return wine_dbg_sprintf("oD%u", reg->regnum);
        case 132:
            return wine_dbg_sprintf("oT%u", reg->regnum);
        case 137:
            return wine_dbg_sprintf("o%u", reg->regnum);
        case 143:
            return wine_dbg_sprintf("i%u", reg->regnum);
        case 146:
            return wine_dbg_sprintf("oC%u", reg->regnum);
        case 142:
            return "oDepth";
        case 134:
            return wine_dbg_sprintf("s%u", reg->regnum);
        case 144:
            return wine_dbg_sprintf("b%u", reg->regnum);
        case 139:
            return "aL";
        case 138:
            switch (reg->regnum)
            {
                case 0: return "vPos";
                case 1: return "vFace";
                default: return "unexpected misctype";
            }
        case 140:
            return wine_dbg_sprintf("l%u", reg->regnum);
        case 136:
            return wine_dbg_sprintf("p%u", reg->regnum);
        default:
            return wine_dbg_sprintf("unknown regname %#x", reg->type);
    }
}
