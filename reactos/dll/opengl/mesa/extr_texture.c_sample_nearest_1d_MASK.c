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
struct gl_texture_object {int /*<<< orphan*/ * Image; } ;
typedef  size_t GLuint ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  int /*<<< orphan*/  GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_texture_object const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1( const struct gl_texture_object *tObj, GLuint n,
                               const GLfloat s[], const GLfloat t[],
                               const GLfloat u[], const GLfloat lambda[],
                               GLubyte red[], GLubyte green[], GLubyte blue[],
                               GLubyte alpha[] )
{
   GLuint i;
   for (i=0;i<n;i++) {
      FUNC0( tObj, tObj->Image[0], s[i],
                         &red[i], &green[i], &blue[i], &alpha[i]);
   }
}