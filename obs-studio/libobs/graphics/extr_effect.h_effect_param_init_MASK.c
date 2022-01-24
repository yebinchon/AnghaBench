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
struct gs_effect_param {int /*<<< orphan*/  annotations; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gs_effect_param*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct gs_effect_param *param)
{
	FUNC1(param, 0, sizeof(struct gs_effect_param));
	FUNC0(param->annotations);
}