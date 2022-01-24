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
struct gl_video {int /*<<< orphan*/  ra; int /*<<< orphan*/  log; } ;
struct bstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  add_user_hook ; 
 int /*<<< orphan*/  add_user_tex ; 
 struct bstr FUNC0 (struct gl_video*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bstr,struct gl_video*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gl_video *p, char **shaders)
{
    if (!shaders)
        return;

    for (int n = 0; shaders[n] != NULL; n++) {
        struct bstr file = FUNC0(p, shaders[n]);
        FUNC1(p->log, p->ra, file, p, add_user_hook, add_user_tex);
    }
}