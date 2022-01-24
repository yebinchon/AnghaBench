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
typedef  size_t uint32_t ;
struct obs_source_frame {size_t* linesize; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct obs_source_frame*,struct obs_source_frame const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline void FUNC2(struct obs_source_frame *dst,
					 const struct obs_source_frame *src,
					 uint32_t plane, uint32_t lines)
{
	if (dst->linesize[plane] != src->linesize[plane])
		for (uint32_t y = 0; y < lines; y++)
			FUNC0(dst, src, plane, y);
	else
		FUNC1(dst->data[plane], src->data[plane],
		       dst->linesize[plane] * lines);
}