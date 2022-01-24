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
struct buffer {int len; } ;
struct stream_buf {struct buffer next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  D_STREAM_DEBUG ; 
 scalar_t__ FUNC1 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static inline void
FUNC3(struct stream_buf *sb, struct buffer *buf)
{
    FUNC2(D_STREAM_DEBUG, "STREAM: GET NEXT len=%d",
         FUNC1(&sb->next) ? sb->next.len : -1);
    FUNC0(FUNC1(&sb->next));
    *buf = sb->next;
}