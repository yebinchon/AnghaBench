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
struct gs_vb_data {int dummy; } ;

/* Variables and functions */
 int GS_FLIP_U ; 
 int GS_FLIP_V ; 
 int /*<<< orphan*/  FUNC0 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gs_vb_data*,float,float,float,float,float,float) ; 

__attribute__((used)) static inline void FUNC2(struct gs_vb_data *data, float fcx,
				     float fcy, uint32_t flip)
{
	float start_u, end_u;
	float start_v, end_v;

	FUNC0(&start_u, &end_u, (flip & GS_FLIP_U) != 0);
	FUNC0(&start_v, &end_v, (flip & GS_FLIP_V) != 0);
	FUNC1(data, fcx, fcy, start_u, end_u, start_v, end_v);
}