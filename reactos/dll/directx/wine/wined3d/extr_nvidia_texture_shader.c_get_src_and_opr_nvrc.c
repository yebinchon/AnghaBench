
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int GLenum ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GL_ALPHA ;
 int GL_RGB ;
 int GL_UNSIGNED_IDENTITY_NV ;
 int GL_UNSIGNED_INVERT_NV ;
 int WINED3DTA_ALPHAREPLICATE ;
 int WINED3DTA_COMPLEMENT ;
 int WINED3DTA_SELECTMASK ;
 int d3dta_to_combiner_input (int,int,int ) ;

__attribute__((used)) static void get_src_and_opr_nvrc(DWORD stage, DWORD arg, BOOL is_alpha, GLenum* input, GLenum* mapping, GLenum *component_usage, INT texture_idx) {


    if (arg & WINED3DTA_COMPLEMENT) *mapping = GL_UNSIGNED_INVERT_NV;
    else *mapping = GL_UNSIGNED_IDENTITY_NV;



    if (is_alpha || arg & WINED3DTA_ALPHAREPLICATE) *component_usage = GL_ALPHA;
    else *component_usage = GL_RGB;

    *input = d3dta_to_combiner_input(arg & WINED3DTA_SELECTMASK, stage, texture_idx);
}
