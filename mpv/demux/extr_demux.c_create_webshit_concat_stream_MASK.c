#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stream {int dummy; } ;
struct mpv_global {int dummy; } ;
struct mp_cancel {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ bstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct stream*) ; 
 struct stream* FUNC2 (struct mpv_global*,struct mp_cancel*,struct stream**,int) ; 
 struct stream* FUNC3 (struct mpv_global*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct stream *FUNC4(struct mpv_global *global,
                                                   struct mp_cancel *c,
                                                   bstr init, struct stream *real)
{
    struct stream *mem = FUNC3(global, init.start, init.len);
    FUNC0(mem);

    struct stream *streams[2] = {mem, real};
    struct stream *concat = FUNC2(global, c, streams, 2);
    if (!concat) {
        FUNC1(mem);
        FUNC1(real);
    }
    return concat;
}