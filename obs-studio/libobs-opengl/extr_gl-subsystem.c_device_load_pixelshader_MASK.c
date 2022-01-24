#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ type; } ;
typedef  TYPE_1__ gs_shader_t ;
struct TYPE_9__ {TYPE_1__* cur_pixel_shader; } ;
typedef  TYPE_2__ gs_device_t ;

/* Variables and functions */
 scalar_t__ GS_SHADER_PIXEL ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 

void FUNC3(gs_device_t *device, gs_shader_t *pixelshader)
{
	if (device->cur_pixel_shader == pixelshader)
		return;

	if (pixelshader && pixelshader->type != GS_SHADER_PIXEL) {
		FUNC0(LOG_ERROR, "Specified shader is not a pixel shader");
		goto fail;
	}

	device->cur_pixel_shader = pixelshader;

	FUNC1(device);

	if (pixelshader)
		FUNC2(device, pixelshader);
	return;

fail:
	FUNC0(LOG_ERROR, "device_load_pixelshader (GL) failed");
}