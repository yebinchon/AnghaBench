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
typedef  int uint32_t ;
struct video_scale_info {int height; int width; } ;
typedef  int /*<<< orphan*/  obs_encoder_t ;
typedef  enum qsv_cpu_platform { ____Placeholder_qsv_cpu_platform } qsv_cpu_platform ;

/* Variables and functions */
 int QSV_CPU_PLATFORM_IVB ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(obs_encoder_t *encoder,
				  struct video_scale_info *info)
{
	enum qsv_cpu_platform qsv_platform = FUNC2();
	uint32_t width = FUNC1(encoder);
	uint32_t height = FUNC0(encoder);

	info->height = height;
	info->width = width;

	if (qsv_platform <= QSV_CPU_PLATFORM_IVB) {
		if (width > 1920) {
			info->width = 1920;
		}

		if (height > 1200) {
			info->height = 1200;
		}
	}
}