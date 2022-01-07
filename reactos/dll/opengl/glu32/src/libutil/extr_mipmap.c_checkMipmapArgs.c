
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLenum ;


 int GLU_INVALID_ENUM ;
 int GLU_INVALID_OPERATION ;
 scalar_t__ GL_STENCIL_INDEX ;
 int isLegalFormatForPackedPixelType (scalar_t__,scalar_t__) ;
 int legalFormat (scalar_t__) ;
 int legalType (scalar_t__) ;

__attribute__((used)) static int checkMipmapArgs(GLenum internalFormat, GLenum format, GLenum type)
{
    if (!legalFormat(format) || !legalType(type)) {
 return GLU_INVALID_ENUM;
    }
    if (format == GL_STENCIL_INDEX) {
 return GLU_INVALID_ENUM;
    }

    if (!isLegalFormatForPackedPixelType(format, type)) {
 return GLU_INVALID_OPERATION;
    }

    return 0;
}
