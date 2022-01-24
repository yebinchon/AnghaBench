#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ GLint ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_MAX_TEXTURE_SIZE ; 
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
 int /*<<< orphan*/  GL_TEXTURE_WIDTH ; 
 int /*<<< orphan*/  GL_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 double FUNC7 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(GLenum target, GLint width, GLint height,
		       GLint internalFormat, GLenum format, GLenum type,
		       GLint *newWidth, GLint *newHeight)
{
   /* Use proxy textures if OpenGL version is >= 1.1 */
   if ( (FUNC7((const char *)FUNC2(GL_VERSION),NULL) >= 1.1)
	) {
      GLint widthPowerOf2= FUNC6(width);
      GLint heightPowerOf2= FUNC6(height);       
      GLint proxyWidth;

      do {
	 /* compute level 1 width & height, clamping each at 1 */
	 GLint widthAtLevelOne= (widthPowerOf2 > 1) ?
				 widthPowerOf2 >> 1 :
				 widthPowerOf2;
	 GLint heightAtLevelOne= (heightPowerOf2 > 1) ?
				  heightPowerOf2 >> 1 :
				  heightPowerOf2;
	 GLenum proxyTarget;
	 FUNC0(widthAtLevelOne > 0); FUNC0(heightAtLevelOne > 0);

	 /* does width x height at level 1 & all their mipmaps fit? */
	 if (target == GL_TEXTURE_2D || target == GL_PROXY_TEXTURE_2D) {
	    proxyTarget = GL_PROXY_TEXTURE_2D;
	    FUNC5(proxyTarget, 1, /* must be non-zero */
			 internalFormat,
			 widthAtLevelOne,heightAtLevelOne,0,format,type,NULL);
	 } else
#if defined(GL_ARB_texture_cube_map)
	 if ((target == GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB) ||
	     (target == GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB) ||
	     (target == GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB) ||
	     (target == GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB) ||
	     (target == GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB) ||
	     (target == GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB)) {
	     proxyTarget = GL_PROXY_TEXTURE_CUBE_MAP_ARB;
	     glTexImage2D(proxyTarget, 1, /* must be non-zero */
			  internalFormat,
			  widthAtLevelOne,heightAtLevelOne,0,format,type,NULL);
	 } else
#endif /* GL_ARB_texture_cube_map */
	 {
	    FUNC0(target == GL_TEXTURE_1D || target == GL_PROXY_TEXTURE_1D);
	    proxyTarget = GL_PROXY_TEXTURE_1D;
	    FUNC4(proxyTarget, 1, /* must be non-zero */
			 internalFormat,widthAtLevelOne,0,format,type,NULL);
	 }
	 FUNC3(proxyTarget, 1,GL_TEXTURE_WIDTH,&proxyWidth);
	 /* does it fit??? */
	 if (proxyWidth == 0) { /* nope, so try again with these sizes */
	    if (widthPowerOf2 == 1 && heightPowerOf2 == 1) {
	       /* An 1x1 texture couldn't fit for some reason, so
		* break out.  This should never happen. But things
		* happen.  The disadvantage with this if-statement is
		* that we will never be aware of when this happens
		* since it will silently branch out.
		*/
	       goto noProxyTextures;
	    }
	    widthPowerOf2= widthAtLevelOne;
	    heightPowerOf2= heightAtLevelOne;
	 }
	 /* else it does fit */
      } while (proxyWidth == 0);
      /* loop must terminate! */

      /* return the width & height at level 0 that fits */
      *newWidth= widthPowerOf2;
      *newHeight= heightPowerOf2;
/*printf("Proxy Textures\n");*/
   } /* if gluCheckExtension() */
   else {			/* no texture extension, so do this instead */
      GLint maxsize;

noProxyTextures:

      FUNC1(GL_MAX_TEXTURE_SIZE, &maxsize);
      /* clamp user's texture sizes to maximum sizes, if necessary */
      *newWidth = FUNC6(width);
      if (*newWidth > maxsize) *newWidth = maxsize;
      *newHeight = FUNC6(height);
      if (*newHeight > maxsize) *newHeight = maxsize;
/*printf("NO proxy textures\n");*/
   }
}