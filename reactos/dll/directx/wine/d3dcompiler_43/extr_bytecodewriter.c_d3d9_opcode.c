
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
 int D3DSIO_ABS ;
 int D3DSIO_ADD ;
 int D3DSIO_BEM ;
 int D3DSIO_BREAK ;
 int D3DSIO_BREAKC ;
 int D3DSIO_BREAKP ;
 int D3DSIO_CALL ;
 int D3DSIO_CALLNZ ;
 int D3DSIO_CMP ;
 int D3DSIO_CND ;
 int D3DSIO_COMMENT ;
 int D3DSIO_CRS ;
 int D3DSIO_DCL ;
 int D3DSIO_DEF ;
 int D3DSIO_DEFB ;
 int D3DSIO_DEFI ;
 int D3DSIO_DP2ADD ;
 int D3DSIO_DP3 ;
 int D3DSIO_DP4 ;
 int D3DSIO_DST ;
 int D3DSIO_DSX ;
 int D3DSIO_DSY ;
 int D3DSIO_ELSE ;
 int D3DSIO_END ;
 int D3DSIO_ENDIF ;
 int D3DSIO_ENDLOOP ;
 int D3DSIO_ENDREP ;
 int D3DSIO_EXP ;
 int D3DSIO_EXPP ;
 int D3DSIO_FRC ;
 int D3DSIO_IF ;
 int D3DSIO_IFC ;
 int D3DSIO_LABEL ;
 int D3DSIO_LIT ;
 int D3DSIO_LOG ;
 int D3DSIO_LOGP ;
 int D3DSIO_LOOP ;
 int D3DSIO_LRP ;
 int D3DSIO_M3x2 ;
 int D3DSIO_M3x3 ;
 int D3DSIO_M3x4 ;
 int D3DSIO_M4x3 ;
 int D3DSIO_M4x4 ;
 int D3DSIO_MAD ;
 int D3DSIO_MAX ;
 int D3DSIO_MIN ;
 int D3DSIO_MOV ;
 int D3DSIO_MOVA ;
 int D3DSIO_MUL ;
 int D3DSIO_NOP ;
 int D3DSIO_NRM ;
 int D3DSIO_PHASE ;
 int D3DSIO_POW ;
 int D3DSIO_RCP ;
 int D3DSIO_REP ;
 int D3DSIO_RET ;
 int D3DSIO_RSQ ;
 int D3DSIO_SETP ;
 int D3DSIO_SGE ;
 int D3DSIO_SGN ;
 int D3DSIO_SINCOS ;
 int D3DSIO_SLT ;
 int D3DSIO_SUB ;
 int D3DSIO_TEX ;
 int D3DSIO_TEXBEM ;
 int D3DSIO_TEXBEML ;
 int D3DSIO_TEXCOORD ;
 int D3DSIO_TEXDEPTH ;
 int D3DSIO_TEXDP3 ;
 int D3DSIO_TEXDP3TEX ;
 int D3DSIO_TEXKILL ;
 int D3DSIO_TEXLDD ;
 int D3DSIO_TEXLDL ;
 int D3DSIO_TEXM3x2DEPTH ;
 int D3DSIO_TEXM3x2PAD ;
 int D3DSIO_TEXM3x2TEX ;
 int D3DSIO_TEXM3x3 ;
 int D3DSIO_TEXM3x3PAD ;
 int D3DSIO_TEXM3x3SPEC ;
 int D3DSIO_TEXM3x3TEX ;
 int D3DSIO_TEXM3x3VSPEC ;
 int D3DSIO_TEXREG2AR ;
 int D3DSIO_TEXREG2GB ;
 int D3DSIO_TEXREG2RGB ;
 int D3DSI_TEXLD_BIAS ;
 int D3DSI_TEXLD_PROJECT ;
 int FIXME (char*,int) ;

__attribute__((used)) static DWORD d3d9_opcode(DWORD bwriter_opcode)
{
    switch (bwriter_opcode)
    {
        case 164: return D3DSIO_NOP;
        case 167: return D3DSIO_MOV;
        case 212: return D3DSIO_ADD;
        case 151: return D3DSIO_SUB;
        case 170: return D3DSIO_MAD;
        case 165: return D3DSIO_MUL;
        case 160: return D3DSIO_RCP;
        case 157: return D3DSIO_RSQ;
        case 196: return D3DSIO_DP3;
        case 195: return D3DSIO_DP4;
        case 168: return D3DSIO_MIN;
        case 169: return D3DSIO_MAX;
        case 152: return D3DSIO_SLT;
        case 155: return D3DSIO_SGE;
        case 186: return D3DSIO_EXP;
        case 179: return D3DSIO_LOG;
        case 180: return D3DSIO_LIT;
        case 194: return D3DSIO_DST;
        case 176: return D3DSIO_LRP;
        case 184: return D3DSIO_FRC;
        case 171: return D3DSIO_M4x4;
        case 172: return D3DSIO_M4x3;
        case 173: return D3DSIO_M3x4;
        case 174: return D3DSIO_M3x3;
        case 175: return D3DSIO_M3x2;
        case 207: return D3DSIO_CALL;
        case 206: return D3DSIO_CALLNZ;
        case 177: return D3DSIO_LOOP;
        case 158: return D3DSIO_RET;
        case 188: return D3DSIO_ENDLOOP;
        case 181: return D3DSIO_LABEL;
        case 201: return D3DSIO_DCL;
        case 161: return D3DSIO_POW;
        case 202: return D3DSIO_CRS;
        case 154: return D3DSIO_SGN;
        case 213: return D3DSIO_ABS;
        case 163: return D3DSIO_NRM;
        case 153: return D3DSIO_SINCOS;
        case 159: return D3DSIO_REP;
        case 187: return D3DSIO_ENDREP;
        case 183: return D3DSIO_IF;
        case 182: return D3DSIO_IFC;
        case 191: return D3DSIO_ELSE;
        case 189: return D3DSIO_ENDIF;
        case 210: return D3DSIO_BREAK;
        case 209: return D3DSIO_BREAKC;
        case 166: return D3DSIO_MOVA;
        case 199: return D3DSIO_DEFB;
        case 198: return D3DSIO_DEFI;

        case 147: return D3DSIO_TEXCOORD;
        case 143: return D3DSIO_TEXKILL;
        case 150: return D3DSIO_TEX;
        case 149: return D3DSIO_TEXBEM;
        case 148: return D3DSIO_TEXBEML;
        case 130: return D3DSIO_TEXREG2AR;
        case 129: return D3DSIO_TEXREG2GB;
        case 137: return D3DSIO_TEXM3x2PAD;
        case 136: return D3DSIO_TEXM3x2TEX;
        case 134: return D3DSIO_TEXM3x3PAD;
        case 132: return D3DSIO_TEXM3x3TEX;
        case 133: return D3DSIO_TEXM3x3SPEC;
        case 131:return D3DSIO_TEXM3x3VSPEC;
        case 185: return D3DSIO_EXPP;
        case 178: return D3DSIO_LOGP;
        case 204: return D3DSIO_CND;
        case 200: return D3DSIO_DEF;
        case 128: return D3DSIO_TEXREG2RGB;
        case 144: return D3DSIO_TEXDP3TEX;
        case 138:return D3DSIO_TEXM3x2DEPTH;
        case 145: return D3DSIO_TEXDP3;
        case 135: return D3DSIO_TEXM3x3;
        case 146: return D3DSIO_TEXDEPTH;
        case 205: return D3DSIO_CMP;
        case 211: return D3DSIO_BEM;
        case 197: return D3DSIO_DP2ADD;
        case 193: return D3DSIO_DSX;
        case 192: return D3DSIO_DSY;
        case 141: return D3DSIO_TEXLDD;
        case 156: return D3DSIO_SETP;
        case 140: return D3DSIO_TEXLDL;
        case 208: return D3DSIO_BREAKP;

        case 162: return D3DSIO_PHASE;
        case 203: return D3DSIO_COMMENT;
        case 190: return D3DSIO_END;

        case 139: return D3DSIO_TEX | D3DSI_TEXLD_PROJECT;
        case 142: return D3DSIO_TEX | D3DSI_TEXLD_BIAS;

        default:
            FIXME("Unhandled BWRITERSIO token %#x.\n", bwriter_opcode);
            return ~0U;
    }
}
