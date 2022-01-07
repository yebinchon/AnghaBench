
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;


 int GL_RED ;

 int GL_RG ;
 int GL_RGB ;
 int GL_RGBA ;




GLenum gl_integer_format_to_base(GLenum format)
{
    switch (format) {
    case 131: return GL_RED;
    case 128: return GL_RG;
    case 129: return GL_RGB;
    case 130: return GL_RGBA;
    }
    return 0;
}
