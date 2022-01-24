#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* GetError ) () ;} ;
typedef  scalar_t__ GLenum ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 scalar_t__ GL_NO_ERROR ; 
 int /*<<< orphan*/  MSGL_ERR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(GL *gl, struct mp_log *log, const char *info)
{
    for (;;) {
        GLenum error = gl->GetError();
        if (error == GL_NO_ERROR)
            break;
        FUNC1(log, MSGL_ERR, "%s: OpenGL error %s.\n", info,
               FUNC0(error));
    }
}