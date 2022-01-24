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
struct sh_stream {int type; int demuxer_id; } ;
struct demuxer {int dummy; } ;
typedef  enum stream_type { ____Placeholder_stream_type } stream_type ;

/* Variables and functions */
 int FUNC0 (struct demuxer*) ; 
 struct sh_stream* FUNC1 (struct demuxer*,int) ; 

struct sh_stream *FUNC2(struct demuxer *d,
                                               enum stream_type t, int id)
{
    int num = FUNC0(d);
    for (int n = 0; n < num; n++) {
        struct sh_stream *s = FUNC1(d, n);
        if (s->type == t && s->demuxer_id == id)
            return s;
    }
    return NULL;
}