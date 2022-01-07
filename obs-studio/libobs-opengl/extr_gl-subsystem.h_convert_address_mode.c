
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_address_mode { ____Placeholder_gs_address_mode } gs_address_mode ;
typedef int GLint ;


 int GL_CLAMP_TO_BORDER ;
 int GL_CLAMP_TO_EDGE ;
 int GL_MIRRORED_REPEAT ;
 int GL_MIRROR_CLAMP_EXT ;
 int GL_REPEAT ;






__attribute__((used)) static inline GLint convert_address_mode(enum gs_address_mode mode)
{
 switch (mode) {
 case 128:
  return GL_REPEAT;
 case 131:
  return GL_CLAMP_TO_EDGE;
 case 130:
  return GL_MIRRORED_REPEAT;
 case 132:
  return GL_CLAMP_TO_BORDER;
 case 129:
  return GL_MIRROR_CLAMP_EXT;
 }

 return GL_REPEAT;
}
