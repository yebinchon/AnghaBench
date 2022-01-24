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
struct mpv_global {int dummy; } ;

/* Variables and functions */
 char** FUNC0 (void*,struct mpv_global*,int,char const*) ; 

char **FUNC1(void *talloc_ctx, struct mpv_global *global,
                                const char *filename)
{
    return FUNC0(talloc_ctx, global, 64, filename);
}