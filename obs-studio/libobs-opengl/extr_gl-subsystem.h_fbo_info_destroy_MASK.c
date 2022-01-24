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
struct fbo_info {int /*<<< orphan*/  fbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fbo_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static inline void FUNC3(struct fbo_info *fbo)
{
	if (fbo) {
		FUNC1(1, &fbo->fbo);
		FUNC2("glDeleteFramebuffers");

		FUNC0(fbo);
	}
}