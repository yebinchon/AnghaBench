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
struct dc_capture {int width; int /*<<< orphan*/  texture; int /*<<< orphan*/  bits; scalar_t__ compatibility; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct dc_capture *capture)
{
	if (capture->compatibility) {
		FUNC1(capture->texture, capture->bits,
				     capture->width * 4, false);
	} else {
		FUNC0(capture->texture);
	}
}