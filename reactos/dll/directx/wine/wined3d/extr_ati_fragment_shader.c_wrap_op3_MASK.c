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
struct wined3d_gl_info {int dummy; } ;
typedef  scalar_t__ GLuint ;

/* Variables and functions */
 scalar_t__ GL_ALPHA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC10(const struct wined3d_gl_info *gl_info, GLuint op, GLuint dst, GLuint dstMask, GLuint dstMod,
        GLuint arg1, GLuint arg1Rep, GLuint arg1Mod, GLuint arg2, GLuint arg2Rep, GLuint arg2Mod,
        GLuint arg3, GLuint arg3Rep, GLuint arg3Mod)
{
    if(dstMask == GL_ALPHA) {
        /* Leave some free space to fit "GL_NONE, " in to align most alpha and color op lines */
        FUNC1("glAlphaFragmentOp3ATI(%s, %s,          %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)\n", FUNC5(op), FUNC6(dst), FUNC3(dstMod),
              FUNC6(arg1), FUNC7(arg1Rep), FUNC2(arg1Mod),
              FUNC6(arg2), FUNC7(arg2Rep), FUNC2(arg2Mod),
              FUNC6(arg3), FUNC7(arg3Rep), FUNC2(arg3Mod));
        FUNC0(FUNC8(op, dst, dstMod,
                                         arg1, arg1Rep, arg1Mod,
                                         arg2, arg2Rep, arg2Mod,
                                         arg3, arg3Rep, arg3Mod));
    } else {
        FUNC1("glColorFragmentOp3ATI(%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)\n", FUNC5(op), FUNC6(dst),
              FUNC4(dstMask), FUNC3(dstMod),
              FUNC6(arg1), FUNC7(arg1Rep), FUNC2(arg1Mod),
              FUNC6(arg2), FUNC7(arg2Rep), FUNC2(arg2Mod),
              FUNC6(arg3), FUNC7(arg3Rep), FUNC2(arg3Mod));
        FUNC0(FUNC9(op, dst, dstMask, dstMod,
                                         arg1, arg1Rep, arg1Mod,
                                         arg2, arg2Rep, arg2Mod,
                                         arg3, arg3Rep, arg3Mod));
    }
}