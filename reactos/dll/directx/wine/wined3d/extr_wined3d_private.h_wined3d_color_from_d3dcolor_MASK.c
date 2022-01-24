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
struct wined3d_color {float r; float g; float b; float a; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 
 float FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct wined3d_color *wined3d_color, DWORD d3d_color)
{
    wined3d_color->r = FUNC3(d3d_color) / 255.0f;
    wined3d_color->g = FUNC2(d3d_color) / 255.0f;
    wined3d_color->b = FUNC1(d3d_color) / 255.0f;
    wined3d_color->a = FUNC0(d3d_color) / 255.0f;
}