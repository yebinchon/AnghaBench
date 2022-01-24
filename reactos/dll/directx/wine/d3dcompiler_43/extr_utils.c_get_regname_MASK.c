#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct shader_reg {int type; int regnum; } ;

/* Variables and functions */
#define  BWRITERSPR_ADDR 148 
#define  BWRITERSPR_ATTROUT 147 
#define  BWRITERSPR_COLOROUT 146 
#define  BWRITERSPR_CONST 145 
#define  BWRITERSPR_CONSTBOOL 144 
#define  BWRITERSPR_CONSTINT 143 
#define  BWRITERSPR_DEPTHOUT 142 
#define  BWRITERSPR_INPUT 141 
#define  BWRITERSPR_LABEL 140 
#define  BWRITERSPR_LOOP 139 
#define  BWRITERSPR_MISCTYPE 138 
#define  BWRITERSPR_OUTPUT 137 
#define  BWRITERSPR_PREDICATE 136 
#define  BWRITERSPR_RASTOUT 135 
#define  BWRITERSPR_SAMPLER 134 
#define  BWRITERSPR_TEMP 133 
#define  BWRITERSPR_TEXCRDOUT 132 
#define  BWRITERSPR_TEXTURE 131 
#define  BWRITERSRO_FOG 130 
#define  BWRITERSRO_POINT_SIZE 129 
#define  BWRITERSRO_POSITION 128 
 char const* FUNC0 (char*,int) ; 

__attribute__((used)) static const char *FUNC1(const struct shader_reg *reg)
{
    switch (reg->type)
    {
        case BWRITERSPR_TEMP:
            return FUNC0("r%u", reg->regnum);
        case BWRITERSPR_INPUT:
            return FUNC0("v%u", reg->regnum);
        case BWRITERSPR_CONST:
            return FUNC0("c%u", reg->regnum);
        case BWRITERSPR_ADDR:
            return FUNC0("a%u", reg->regnum);
        case BWRITERSPR_TEXTURE:
            return FUNC0("t%u", reg->regnum);
        case BWRITERSPR_RASTOUT:
            switch (reg->regnum)
            {
                case BWRITERSRO_POSITION:   return "oPos";
                case BWRITERSRO_FOG:        return "oFog";
                case BWRITERSRO_POINT_SIZE: return "oPts";
                default: return "Unexpected RASTOUT";
            }
        case BWRITERSPR_ATTROUT:
            return FUNC0("oD%u", reg->regnum);
        case BWRITERSPR_TEXCRDOUT:
            return FUNC0("oT%u", reg->regnum);
        case BWRITERSPR_OUTPUT:
            return FUNC0("o%u", reg->regnum);
        case BWRITERSPR_CONSTINT:
            return FUNC0("i%u", reg->regnum);
        case BWRITERSPR_COLOROUT:
            return FUNC0("oC%u", reg->regnum);
        case BWRITERSPR_DEPTHOUT:
            return "oDepth";
        case BWRITERSPR_SAMPLER:
            return FUNC0("s%u", reg->regnum);
        case BWRITERSPR_CONSTBOOL:
            return FUNC0("b%u", reg->regnum);
        case BWRITERSPR_LOOP:
            return "aL";
        case BWRITERSPR_MISCTYPE:
            switch (reg->regnum)
            {
                case 0: return "vPos";
                case 1: return "vFace";
                default: return "unexpected misctype";
            }
        case BWRITERSPR_LABEL:
            return FUNC0("l%u", reg->regnum);
        case BWRITERSPR_PREDICATE:
            return FUNC0("p%u", reg->regnum);
        default:
            return FUNC0("unknown regname %#x", reg->type);
    }
}