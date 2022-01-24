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
struct gs_effect_pass {int /*<<< orphan*/  pixelshader; int /*<<< orphan*/  vertshader; int /*<<< orphan*/  pixelshader_params; int /*<<< orphan*/  vertshader_params; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct gs_effect_pass *pass)
{
	FUNC0(pass->name);
	FUNC1(pass->vertshader_params);
	FUNC1(pass->pixelshader_params);

	FUNC2(pass->vertshader);
	FUNC2(pass->pixelshader);
}