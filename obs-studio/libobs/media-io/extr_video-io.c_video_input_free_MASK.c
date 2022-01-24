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
struct video_input {int /*<<< orphan*/  scaler; int /*<<< orphan*/ * frame; } ;

/* Variables and functions */
 size_t MAX_CONVERT_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct video_input *input)
{
	for (size_t i = 0; i < MAX_CONVERT_BUFFERS; i++)
		FUNC0(&input->frame[i]);
	FUNC1(input->scaler);
}