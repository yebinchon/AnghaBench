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
struct frame {int dummy; } ;
struct buffer {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct frame const*) ; 
 int /*<<< orphan*/  FUNC2 (struct frame const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (struct frame const*) ; 
 int /*<<< orphan*/  FUNC4 (struct frame const*) ; 
 struct buffer FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer*,int /*<<< orphan*/ ) ; 

void
FUNC8(struct buffer *buf,
                   const struct frame *frame,
                   const bool tuntap_buffer,
                   const unsigned int align_mask)
{
    /* allocate buffer for overlapped I/O */
    *buf = FUNC5(FUNC1(frame));
    FUNC0(FUNC6(buf, FUNC2(frame, align_mask)));
    buf->len = tuntap_buffer ? FUNC4(frame) : FUNC3(frame);
    FUNC0(FUNC7(buf, 0));
}