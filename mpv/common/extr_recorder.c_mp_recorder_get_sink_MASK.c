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
struct sh_stream {int dummy; } ;
struct mp_recorder_sink {struct sh_stream* sh; } ;
struct mp_recorder {int num_streams; struct mp_recorder_sink** streams; } ;

/* Variables and functions */

struct mp_recorder_sink *FUNC0(struct mp_recorder *r,
                                              struct sh_stream *stream)
{
    for (int n = 0; n < r->num_streams; n++) {
        struct mp_recorder_sink *rst = r->streams[n];
        if (rst->sh == stream)
            return rst;
    }
    return NULL;
}