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
struct stream_open_args {int flags; char const* url; struct mp_cancel* cancel; struct mpv_global* global; } ;
struct stream {int dummy; } ;
struct mpv_global {int dummy; } ;
struct mp_cancel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stream_open_args*,struct stream**) ; 

struct stream *FUNC1(const char *url, int flags,
                             struct mp_cancel *c, struct mpv_global *global)
{
    struct stream_open_args args = {
        .global = global,
        .cancel = c,
        .flags = flags,
        .url = url,
    };
    struct stream *s;
    FUNC0(&args, &s);
    return s;
}