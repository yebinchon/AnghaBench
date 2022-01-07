
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLenum ;
typedef int GLboolean ;


 scalar_t__ GL_BGRA ;
 int GL_FALSE ;
 scalar_t__ GL_RGB ;
 scalar_t__ GL_RGBA ;
 int GL_TRUE ;
 scalar_t__ GL_UNSIGNED_BYTE_2_3_3_REV ;
 scalar_t__ GL_UNSIGNED_BYTE_3_3_2 ;
 scalar_t__ GL_UNSIGNED_INT_10_10_10_2 ;
 scalar_t__ GL_UNSIGNED_INT_2_10_10_10_REV ;
 scalar_t__ GL_UNSIGNED_INT_8_8_8_8 ;
 scalar_t__ GL_UNSIGNED_INT_8_8_8_8_REV ;
 scalar_t__ GL_UNSIGNED_SHORT_1_5_5_5_REV ;
 scalar_t__ GL_UNSIGNED_SHORT_4_4_4_4 ;
 scalar_t__ GL_UNSIGNED_SHORT_4_4_4_4_REV ;
 scalar_t__ GL_UNSIGNED_SHORT_5_5_5_1 ;
 scalar_t__ GL_UNSIGNED_SHORT_5_6_5 ;
 scalar_t__ GL_UNSIGNED_SHORT_5_6_5_REV ;
 int isTypePackedPixel (scalar_t__) ;

__attribute__((used)) static GLboolean isLegalFormatForPackedPixelType(GLenum format, GLenum type)
{

   if (!isTypePackedPixel(type)) {
      return GL_TRUE;
   }


   if ((type == GL_UNSIGNED_BYTE_3_3_2 || type == GL_UNSIGNED_BYTE_2_3_3_REV||
 type == GL_UNSIGNED_SHORT_5_6_5|| type == GL_UNSIGNED_SHORT_5_6_5_REV)
       && format != GL_RGB)
      return GL_FALSE;




   if ((type == GL_UNSIGNED_SHORT_4_4_4_4 ||
 type == GL_UNSIGNED_SHORT_4_4_4_4_REV ||
 type == GL_UNSIGNED_SHORT_5_5_5_1 ||
 type == GL_UNSIGNED_SHORT_1_5_5_5_REV ||
 type == GL_UNSIGNED_INT_8_8_8_8 ||
 type == GL_UNSIGNED_INT_8_8_8_8_REV ||
 type == GL_UNSIGNED_INT_10_10_10_2 ||
 type == GL_UNSIGNED_INT_2_10_10_10_REV) &&
       (format != GL_RGBA &&
 format != GL_BGRA)) {
      return GL_FALSE;
   }

   return GL_TRUE;
}
