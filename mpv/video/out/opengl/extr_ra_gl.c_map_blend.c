
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ra_blend { ____Placeholder_ra_blend } ra_blend ;
typedef int GLenum ;


 int GL_ONE ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
 int GL_ZERO ;





__attribute__((used)) static GLenum map_blend(enum ra_blend blend)
{
    switch (blend) {
    case 128: return GL_ZERO;
    case 131: return GL_ONE;
    case 129: return GL_SRC_ALPHA;
    case 130: return GL_ONE_MINUS_SRC_ALPHA;
    default: return 0;
    }
}
