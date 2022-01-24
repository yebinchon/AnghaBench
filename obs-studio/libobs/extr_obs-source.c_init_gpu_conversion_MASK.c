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
struct obs_source_frame {int /*<<< orphan*/  full_range; int /*<<< orphan*/  format; } ;
struct obs_source {int dummy; } ;

/* Variables and functions */
#define  CONVERT_420 140 
#define  CONVERT_420_A 139 
#define  CONVERT_422 138 
#define  CONVERT_422_A 137 
#define  CONVERT_422_PACK 136 
#define  CONVERT_444 135 
#define  CONVERT_444_A 134 
#define  CONVERT_444_A_PACK 133 
#define  CONVERT_800 132 
#define  CONVERT_BGR3 131 
#define  CONVERT_NONE 130 
#define  CONVERT_NV12 129 
#define  CONVERT_RGB_LIMITED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC3 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC4 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC5 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC6 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC7 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC8 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC9 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC10 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC11 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC12 (struct obs_source*,struct obs_source_frame const*) ; 
 int FUNC13 (struct obs_source*,struct obs_source_frame const*) ; 

__attribute__((used)) static inline bool FUNC14(struct obs_source *source,
				       const struct obs_source_frame *frame)
{
	switch (FUNC1(frame->format, frame->full_range)) {
	case CONVERT_422_PACK:
		return FUNC4(source, frame);

	case CONVERT_420:
		return FUNC7(source, frame);

	case CONVERT_422:
		return FUNC9(source, frame);

	case CONVERT_NV12:
		return FUNC3(source, frame);

	case CONVERT_444:
		return FUNC11(source, frame);

	case CONVERT_800:
		return FUNC13(source, frame);

	case CONVERT_RGB_LIMITED:
		return FUNC12(source, frame);

	case CONVERT_BGR3:
		return FUNC2(source, frame);

	case CONVERT_420_A:
		return FUNC6(source, frame);

	case CONVERT_422_A:
		return FUNC8(source, frame);

	case CONVERT_444_A:
		return FUNC10(source, frame);

	case CONVERT_444_A_PACK:
		return FUNC5(source, frame);

	case CONVERT_NONE:
		FUNC0(false && "No conversion requested");
		break;
	}
	return false;
}