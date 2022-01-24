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
struct wined3d_context {int dummy; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ WINED3D_HIGHEST_TEXTURE_STATE ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct wined3d_context *context, DWORD stage)
{
    DWORD i;

    for (i = 0; i <= WINED3D_HIGHEST_TEXTURE_STATE; ++i)
        FUNC1(context, FUNC0(stage, i));
}