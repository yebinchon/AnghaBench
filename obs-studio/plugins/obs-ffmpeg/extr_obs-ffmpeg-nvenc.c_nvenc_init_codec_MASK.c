#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvenc_encoder {int initialized; TYPE_2__* vframe; TYPE_1__* context; int /*<<< orphan*/  nvenc; } ;
struct TYPE_5__ {int /*<<< orphan*/  color_range; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; } ;
struct TYPE_4__ {int /*<<< orphan*/  color_range; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pix_fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 () ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static bool FUNC6(struct nvenc_encoder *enc)
{
	int ret;

	ret = FUNC3(enc->context, enc->nvenc, NULL);
	if (ret < 0) {
		FUNC5("Failed to open NVENC codec: %s", FUNC0(ret));
		return false;
	}

	enc->vframe = FUNC1();
	if (!enc->vframe) {
		FUNC5("Failed to allocate video frame");
		return false;
	}

	enc->vframe->format = enc->context->pix_fmt;
	enc->vframe->width = enc->context->width;
	enc->vframe->height = enc->context->height;
	enc->vframe->colorspace = enc->context->colorspace;
	enc->vframe->color_range = enc->context->color_range;

	ret = FUNC2(enc->vframe, FUNC4());
	if (ret < 0) {
		FUNC5("Failed to allocate vframe: %s", FUNC0(ret));
		return false;
	}

	enc->initialized = true;
	return true;
}