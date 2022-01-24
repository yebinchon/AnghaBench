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
struct gl_texture_object {scalar_t__ const MinMagThresh; int MinFilter; int MagFilter; int /*<<< orphan*/ * Image; } ;
typedef  size_t GLuint ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  scalar_t__ GLfloat ;

/* Variables and functions */
#define  GL_LINEAR 133 
#define  GL_LINEAR_MIPMAP_LINEAR 132 
#define  GL_LINEAR_MIPMAP_NEAREST 131 
#define  GL_NEAREST 130 
#define  GL_NEAREST_MIPMAP_LINEAR 129 
#define  GL_NEAREST_MIPMAP_NEAREST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gl_texture_object const*,int /*<<< orphan*/ ,scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gl_texture_object const*,scalar_t__ const,scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_texture_object const*,scalar_t__ const,scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_texture_object const*,int /*<<< orphan*/ ,scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gl_texture_object const*,scalar_t__ const,scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gl_texture_object const*,scalar_t__ const,scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7( const struct gl_texture_object *tObj,
                              GLuint n,
                              const GLfloat s[], const GLfloat t[],
                              const GLfloat u[], const GLfloat lambda[],
                              GLubyte red[], GLubyte green[], GLubyte blue[],
                              GLubyte alpha[] )
{
   GLuint i;
   for (i=0;i<n;i++) {
      if (lambda[i] > tObj->MinMagThresh) {
         /* minification */
         switch (tObj->MinFilter) {
            case GL_NEAREST:
               FUNC4( tObj, tObj->Image[0], s[i], t[i],
                                  &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case GL_LINEAR:
               FUNC1( tObj, tObj->Image[0], s[i], t[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case GL_NEAREST_MIPMAP_NEAREST:
               FUNC6( tObj, s[i], t[i], lambda[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case GL_LINEAR_MIPMAP_NEAREST:
               FUNC3( tObj, s[i], t[i], lambda[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case GL_NEAREST_MIPMAP_LINEAR:
               FUNC5( tObj, s[i], t[i], lambda[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case GL_LINEAR_MIPMAP_LINEAR:
               FUNC2( tObj, s[i], t[i], lambda[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            default:
               FUNC0(NULL, "Bad min filter in sample_2d_texture");
               return;
         }
      }
      else {
         /* magnification */
         switch (tObj->MagFilter) {
            case GL_NEAREST:
               FUNC4( tObj, tObj->Image[0], s[i], t[i],
                                  &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            case GL_LINEAR:
               FUNC1( tObj, tObj->Image[0], s[i], t[i],
                                 &red[i], &green[i], &blue[i], &alpha[i] );
               break;
            default:
               FUNC0(NULL, "Bad mag filter in sample_2d_texture");
         }
      }
   }
}