
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLenum ;


 int FIXME (char*,scalar_t__) ;
 scalar_t__ GL_UNSIGNED_IDENTITY_NV ;
 scalar_t__ GL_UNSIGNED_INVERT_NV ;

__attribute__((used)) static GLenum invert_mapping(GLenum mapping) {
    if (mapping == GL_UNSIGNED_INVERT_NV) return GL_UNSIGNED_IDENTITY_NV;
    else if (mapping == GL_UNSIGNED_IDENTITY_NV) return GL_UNSIGNED_INVERT_NV;

    FIXME("Unhandled mapping %#x\n", mapping);
    return mapping;
}
