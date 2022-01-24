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
struct wined3d_gl_info {scalar_t__* supported; } ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  GLuint64 ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 size_t ARB_TIMER_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_QUERY_RESULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT64 FUNC3(GLuint id, const struct wined3d_gl_info *gl_info)
{
    if (gl_info->supported[ARB_TIMER_QUERY])
    {
        GLuint64 result;
        FUNC0(FUNC1(id, GL_QUERY_RESULT, &result));
        return result;
    }
    else
    {
        GLuint result;
        FUNC0(FUNC2(id, GL_QUERY_RESULT, &result));
        return result;
    }
}