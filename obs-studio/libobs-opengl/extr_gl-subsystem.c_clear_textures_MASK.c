#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gs_device {TYPE_1__** cur_textures; } ;
struct TYPE_2__ {int /*<<< orphan*/  gl_target; } ;
typedef  size_t GLenum ;

/* Variables and functions */
 scalar_t__ GL_TEXTURE0 ; 
 size_t GS_MAX_TEXTURES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gs_device *device)
{
	GLenum i;
	for (i = 0; i < GS_MAX_TEXTURES; i++) {
		if (device->cur_textures[i]) {
			FUNC0(GL_TEXTURE0 + i);
			FUNC1(device->cur_textures[i]->gl_target, 0);
			device->cur_textures[i] = NULL;
		}
	}
}