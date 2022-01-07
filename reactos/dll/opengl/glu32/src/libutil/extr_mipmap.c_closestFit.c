
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLint ;
typedef scalar_t__ GLenum ;


 int GL_MAX_TEXTURE_SIZE ;
 scalar_t__ GL_PROXY_TEXTURE_1D ;
 scalar_t__ GL_PROXY_TEXTURE_2D ;
 scalar_t__ GL_PROXY_TEXTURE_CUBE_MAP_ARB ;
 scalar_t__ GL_TEXTURE_1D ;
 scalar_t__ GL_TEXTURE_2D ;
 scalar_t__ GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB ;
 scalar_t__ GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB ;
 scalar_t__ GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB ;
 scalar_t__ GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB ;
 scalar_t__ GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB ;
 scalar_t__ GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB ;
 int GL_TEXTURE_WIDTH ;
 int GL_VERSION ;
 int assert (int) ;
 int glGetIntegerv (int ,scalar_t__*) ;
 scalar_t__ glGetString (int ) ;
 int glGetTexLevelParameteriv (scalar_t__,int,int ,scalar_t__*) ;
 int glTexImage1D (scalar_t__,int,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,int *) ;
 int glTexImage2D (scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__,int *) ;
 scalar_t__ nearestPower (scalar_t__) ;
 double strtod (char const*,int *) ;

__attribute__((used)) static void closestFit(GLenum target, GLint width, GLint height,
         GLint internalFormat, GLenum format, GLenum type,
         GLint *newWidth, GLint *newHeight)
{

   if ( (strtod((const char *)glGetString(GL_VERSION),((void*)0)) >= 1.1)
 ) {
      GLint widthPowerOf2= nearestPower(width);
      GLint heightPowerOf2= nearestPower(height);
      GLint proxyWidth;

      do {

  GLint widthAtLevelOne= (widthPowerOf2 > 1) ?
     widthPowerOf2 >> 1 :
     widthPowerOf2;
  GLint heightAtLevelOne= (heightPowerOf2 > 1) ?
      heightPowerOf2 >> 1 :
      heightPowerOf2;
  GLenum proxyTarget;
  assert(widthAtLevelOne > 0); assert(heightAtLevelOne > 0);


  if (target == GL_TEXTURE_2D || target == GL_PROXY_TEXTURE_2D) {
     proxyTarget = GL_PROXY_TEXTURE_2D;
     glTexImage2D(proxyTarget, 1,
    internalFormat,
    widthAtLevelOne,heightAtLevelOne,0,format,type,((void*)0));
  } else
  {
     assert(target == GL_TEXTURE_1D || target == GL_PROXY_TEXTURE_1D);
     proxyTarget = GL_PROXY_TEXTURE_1D;
     glTexImage1D(proxyTarget, 1,
    internalFormat,widthAtLevelOne,0,format,type,((void*)0));
  }
  glGetTexLevelParameteriv(proxyTarget, 1,GL_TEXTURE_WIDTH,&proxyWidth);

  if (proxyWidth == 0) {
     if (widthPowerOf2 == 1 && heightPowerOf2 == 1) {






        goto noProxyTextures;
     }
     widthPowerOf2= widthAtLevelOne;
     heightPowerOf2= heightAtLevelOne;
  }

      } while (proxyWidth == 0);



      *newWidth= widthPowerOf2;
      *newHeight= heightPowerOf2;

   }
   else {
      GLint maxsize;

noProxyTextures:

      glGetIntegerv(GL_MAX_TEXTURE_SIZE, &maxsize);

      *newWidth = nearestPower(width);
      if (*newWidth > maxsize) *newWidth = maxsize;
      *newHeight = nearestPower(height);
      if (*newHeight > maxsize) *newHeight = maxsize;

   }
}
