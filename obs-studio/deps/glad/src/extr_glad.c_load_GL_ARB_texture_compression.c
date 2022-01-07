
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETCOMPRESSEDTEXIMAGEARBPROC ;
typedef scalar_t__ PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC ;
typedef scalar_t__ PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC ;
typedef scalar_t__ PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC ;
typedef scalar_t__ PFNGLCOMPRESSEDTEXIMAGE3DARBPROC ;
typedef scalar_t__ PFNGLCOMPRESSEDTEXIMAGE2DARBPROC ;
typedef scalar_t__ PFNGLCOMPRESSEDTEXIMAGE1DARBPROC ;
typedef scalar_t__ (* GLADloadproc ) (char*) ;


 int GLAD_GL_ARB_texture_compression ;
 scalar_t__ glad_glCompressedTexImage1DARB ;
 scalar_t__ glad_glCompressedTexImage2DARB ;
 scalar_t__ glad_glCompressedTexImage3DARB ;
 scalar_t__ glad_glCompressedTexSubImage1DARB ;
 scalar_t__ glad_glCompressedTexSubImage2DARB ;
 scalar_t__ glad_glCompressedTexSubImage3DARB ;
 scalar_t__ glad_glGetCompressedTexImageARB ;

__attribute__((used)) static void load_GL_ARB_texture_compression(GLADloadproc load) {
 if(!GLAD_GL_ARB_texture_compression) return;
 glad_glCompressedTexImage3DARB = (PFNGLCOMPRESSEDTEXIMAGE3DARBPROC)load("glCompressedTexImage3DARB");
 glad_glCompressedTexImage2DARB = (PFNGLCOMPRESSEDTEXIMAGE2DARBPROC)load("glCompressedTexImage2DARB");
 glad_glCompressedTexImage1DARB = (PFNGLCOMPRESSEDTEXIMAGE1DARBPROC)load("glCompressedTexImage1DARB");
 glad_glCompressedTexSubImage3DARB = (PFNGLCOMPRESSEDTEXSUBIMAGE3DARBPROC)load("glCompressedTexSubImage3DARB");
 glad_glCompressedTexSubImage2DARB = (PFNGLCOMPRESSEDTEXSUBIMAGE2DARBPROC)load("glCompressedTexSubImage2DARB");
 glad_glCompressedTexSubImage1DARB = (PFNGLCOMPRESSEDTEXSUBIMAGE1DARBPROC)load("glCompressedTexSubImage1DARB");
 glad_glGetCompressedTexImageARB = (PFNGLGETCOMPRESSEDTEXIMAGEARBPROC)load("glGetCompressedTexImageARB");
}
