
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int GLint ;
typedef int GLenum ;


 int glCompressedTexImage2D (int ,scalar_t__,int ,scalar_t__,scalar_t__,int ,scalar_t__,int const*) ;
 int glTexImage2D (int ,scalar_t__,int ,scalar_t__,scalar_t__,int ,int ,int ,int const*) ;
 int gl_success (char*) ;

bool gl_init_face(GLenum target, GLenum type, uint32_t num_levels,
    GLenum format, GLint internal_format, bool compressed,
    uint32_t width, uint32_t height, uint32_t size,
    const uint8_t ***p_data)
{
 bool success = 1;
 const uint8_t **data = p_data ? *p_data : ((void*)0);
 uint32_t i;

 for (i = 0; i < num_levels; i++) {
  if (compressed) {
   glCompressedTexImage2D(target, i, internal_format,
            width, height, 0, size,
            data ? *data : ((void*)0));
   if (!gl_success("glCompressedTexImage2D"))
    success = 0;

  } else {
   glTexImage2D(target, i, internal_format, width, height,
         0, format, type, data ? *data : ((void*)0));
   if (!gl_success("glTexImage2D"))
    success = 0;
  }

  if (data)
   data++;

  size /= 4;
  width /= 2;
  height /= 2;

  if (width == 0)
   width = 1;
  if (height == 0)
   height = 1;
 }

 if (data)
  *p_data = data;
 return success;
}
