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
struct stream_buf {int residual_fully_formed; int len; int /*<<< orphan*/  next; int /*<<< orphan*/  buf_init; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline void
FUNC2(struct stream_buf *sb)
{
    FUNC1(D_STREAM_DEBUG, "STREAM: RESET");
    sb->residual_fully_formed = false;
    sb->buf = sb->buf_init;
    FUNC0(&sb->next);
    sb->len = -1;
}