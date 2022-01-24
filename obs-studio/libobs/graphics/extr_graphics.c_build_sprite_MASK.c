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
struct vec2 {int dummy; } ;
struct gs_vb_data {scalar_t__ points; TYPE_1__* tvarray; } ;
struct TYPE_2__ {struct vec2* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vec2*,float,float) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct gs_vb_data *data, float fcx, float fcy,
			 float start_u, float end_u, float start_v, float end_v)
{
	struct vec2 *tvarray = data->tvarray[0].array;

	FUNC2(data->points);
	FUNC1(data->points + 1, fcx, 0.0f, 0.0f);
	FUNC1(data->points + 2, 0.0f, fcy, 0.0f);
	FUNC1(data->points + 3, fcx, fcy, 0.0f);
	FUNC0(tvarray, start_u, start_v);
	FUNC0(tvarray + 1, end_u, start_v);
	FUNC0(tvarray + 2, start_u, end_v);
	FUNC0(tvarray + 3, end_u, end_v);
}