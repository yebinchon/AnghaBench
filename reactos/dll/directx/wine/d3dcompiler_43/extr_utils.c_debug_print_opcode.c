
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
const char *debug_print_opcode(DWORD opcode)
{
    switch (opcode)
    {
        case 164: return "nop";
        case 167: return "mov";
        case 210: return "add";
        case 151: return "sub";
        case 170: return "mad";
        case 165: return "mul";
        case 160: return "rcp";
        case 157: return "rsq";
        case 195: return "dp3";
        case 194: return "dp4";
        case 168: return "min";
        case 169: return "max";
        case 152: return "slt";
        case 155: return "sge";
        case 186: return "exp";
        case 179: return "log";
        case 180: return "lit";
        case 193: return "dst";
        case 176: return "lrp";
        case 184: return "frc";
        case 171: return "m4x4";
        case 172: return "m4x3";
        case 173: return "m3x4";
        case 174: return "m3x3";
        case 175: return "m3x2";
        case 205: return "call";
        case 204: return "callnz";
        case 177: return "loop";
        case 158: return "ret";
        case 188: return "endloop";
        case 181: return "label";
        case 200: return "dcl";
        case 161: return "pow";
        case 201: return "crs";
        case 154: return "sgn";
        case 211: return "abs";
        case 163: return "nrm";
        case 153: return "sincos";
        case 159: return "rep";
        case 187: return "endrep";
        case 183: return "if";
        case 182: return "ifc";
        case 190: return "else";
        case 189: return "endif";
        case 208: return "break";
        case 207: return "breakc";
        case 166: return "mova";
        case 198: return "defb";
        case 197: return "defi";
        case 147: return "texcoord";
        case 143: return "texkill";
        case 150: return "tex";
        case 149: return "texbem";
        case 148: return "texbeml";
        case 130: return "texreg2ar";
        case 129: return "texreg2gb";
        case 137: return "texm3x2pad";
        case 136: return "texm3x2tex";
        case 134: return "texm3x3pad";
        case 132: return "texm3x3tex";
        case 133: return "texm3x3vspec";
        case 131: return "texm3x3vspec";
        case 185: return "expp";
        case 178: return "logp";
        case 202: return "cnd";
        case 199: return "def";
        case 128: return "texreg2rgb";
        case 144: return "texdp3tex";
        case 138: return "texm3x2depth";
        case 145: return "texdp3";
        case 135: return "texm3x3";
        case 146: return "texdepth";
        case 203: return "cmp";
        case 209: return "bem";
        case 196: return "dp2add";
        case 192: return "dsx";
        case 191: return "dsy";
        case 141: return "texldd";
        case 156: return "setp";
        case 140: return "texldl";
        case 206: return "breakp";
        case 162: return "phase";

        case 139: return "texldp";
        case 142: return "texldb";

        default: return "unknown";
    }
}
