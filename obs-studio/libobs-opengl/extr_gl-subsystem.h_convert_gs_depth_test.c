
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_depth_test { ____Placeholder_gs_depth_test } gs_depth_test ;
typedef int GLenum ;


 int GL_ALWAYS ;
 int GL_EQUAL ;
 int GL_GEQUAL ;
 int GL_GREATER ;
 int GL_LEQUAL ;
 int GL_LESS ;
 int GL_NEVER ;
 int GL_NOTEQUAL ;
__attribute__((used)) static inline GLenum convert_gs_depth_test(enum gs_depth_test test)
{
 switch (test) {
 case 129:
  return GL_NEVER;
 case 130:
  return GL_LESS;
 case 131:
  return GL_LEQUAL;
 case 134:
  return GL_EQUAL;
 case 133:
  return GL_GEQUAL;
 case 132:
  return GL_GREATER;
 case 128:
  return GL_NOTEQUAL;
 case 135:
  return GL_ALWAYS;
 }

 return GL_NEVER;
}
