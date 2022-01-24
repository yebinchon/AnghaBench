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
typedef  int /*<<< orphan*/  uint32_t ;
struct fbo_info {int dummy; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;

/* Variables and functions */
 struct fbo_info* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct fbo_info *FUNC2(gs_texture_t *tex)
{
	uint32_t width, height;
	if (!FUNC1(tex, &width, &height))
		return NULL;

	return FUNC0(tex, width, height);
}