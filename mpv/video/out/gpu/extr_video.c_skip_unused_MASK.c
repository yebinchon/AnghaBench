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
struct gl_video {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,double) ; 

__attribute__((used)) static void FUNC1(struct gl_video *p, int num_components)
{
    for (int i = num_components; i < 4; i++)
        FUNC0("color.%c = %f;\n", "rgba"[i], i < 3 ? 0.0 : 1.0);
}