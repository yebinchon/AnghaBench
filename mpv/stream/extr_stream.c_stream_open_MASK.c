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
struct stream {int dummy; } ;
struct mpv_global {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STREAM_READ ; 
 struct stream* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mpv_global*) ; 

struct stream *FUNC1(const char *filename, struct mpv_global *global)
{
    return FUNC0(filename, STREAM_READ, NULL, global);
}