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
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  STREAM_WRITE ; 
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mpv_global*) ; 

stream_t *FUNC1(const char *filename, struct mpv_global *global)
{
    return FUNC0(filename, STREAM_WRITE, NULL, global);
}