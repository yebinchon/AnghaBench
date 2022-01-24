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
struct ffmpeg_data {scalar_t__ last_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(struct ffmpeg_data *data,
					 const char *error)
{
	if (data->last_error)
		FUNC0(data->last_error);

	data->last_error = FUNC1(error);
}