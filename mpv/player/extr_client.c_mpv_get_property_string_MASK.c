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
typedef  int /*<<< orphan*/  mpv_handle ;

/* Variables and functions */
 int /*<<< orphan*/  MPV_FORMAT_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char**) ; 

char *FUNC1(mpv_handle *ctx, const char *name)
{
    char *str = NULL;
    FUNC0(ctx, name, MPV_FORMAT_STRING, &str);
    return str;
}