#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct obs_source_frame {scalar_t__ format; } ;
struct TYPE_4__ {int /*<<< orphan*/ * async_textures; } ;
typedef  TYPE_1__ obs_source_t ;
typedef  enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;

/* Variables and functions */
 int GS_BGRA ; 
 int GS_BGRX ; 
 scalar_t__ VIDEO_FORMAT_BGRA ; 
 scalar_t__ VIDEO_FORMAT_BGRX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static inline void FUNC2(obs_source_t *source,
					   struct obs_source_frame *frame)
{
	enum gs_color_format format =
		FUNC0(source->async_textures[0]);
	if (format == GS_BGRX && frame->format == VIDEO_FORMAT_BGRA) {
		FUNC1(source, GS_BGRA);
	} else if (format == GS_BGRA && frame->format == VIDEO_FORMAT_BGRX) {
		FUNC1(source, GS_BGRX);
	}
}