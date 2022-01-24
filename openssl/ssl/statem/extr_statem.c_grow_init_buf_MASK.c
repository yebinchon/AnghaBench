#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* data; } ;
struct TYPE_4__ {char* init_msg; TYPE_3__* init_buf; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC1(SSL *s, size_t size) {

    size_t msg_offset = (char *)s->init_msg - s->init_buf->data;

    if (!FUNC0(s->init_buf, (int)size))
        return 0;

    if (size < msg_offset)
        return 0;

    s->init_msg = s->init_buf->data + msg_offset;

    return 1;
}