
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_sample_filter { ____Placeholder_gs_sample_filter } gs_sample_filter ;
typedef int GLint ;


 int GL_LINEAR ;
 int GL_LINEAR_MIPMAP_LINEAR ;
 int GL_LINEAR_MIPMAP_NEAREST ;
 int GL_NEAREST ;
 int GL_NEAREST_MIPMAP_LINEAR ;
 int GL_NEAREST_MIPMAP_NEAREST ;
__attribute__((used)) static inline void convert_filter(enum gs_sample_filter filter,
      GLint *min_filter, GLint *mag_filter)
{
 switch (filter) {
 case 128:
  *min_filter = GL_NEAREST_MIPMAP_NEAREST;
  *mag_filter = GL_NEAREST;
  return;
 case 135:
  *min_filter = GL_LINEAR_MIPMAP_LINEAR;
  *mag_filter = GL_LINEAR;
  return;
 case 131:
  *min_filter = GL_NEAREST_MIPMAP_LINEAR;
  *mag_filter = GL_NEAREST;
  return;
 case 130:
  *min_filter = GL_NEAREST_MIPMAP_NEAREST;
  *mag_filter = GL_LINEAR;
  return;
 case 129:
  *min_filter = GL_NEAREST_MIPMAP_LINEAR;
  *mag_filter = GL_LINEAR;
  return;
 case 134:
  *min_filter = GL_LINEAR_MIPMAP_NEAREST;
  *mag_filter = GL_NEAREST;
  return;
 case 133:
  *min_filter = GL_LINEAR_MIPMAP_LINEAR;
  *mag_filter = GL_NEAREST;
  return;
 case 132:
  *min_filter = GL_LINEAR_MIPMAP_NEAREST;
  *mag_filter = GL_LINEAR;
  return;
 case 136:
  *min_filter = GL_LINEAR_MIPMAP_LINEAR;
  *mag_filter = GL_LINEAR;
  return;
 }

 *min_filter = GL_NEAREST_MIPMAP_NEAREST;
 *mag_filter = GL_NEAREST;
}
