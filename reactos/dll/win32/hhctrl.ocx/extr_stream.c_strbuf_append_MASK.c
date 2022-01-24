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
struct TYPE_3__ {scalar_t__ len; scalar_t__ size; scalar_t__ buf; } ;
typedef  TYPE_1__ strbuf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,int) ; 

__attribute__((used)) static void FUNC2(strbuf_t *buf, const char *data, int len)
{
    if(buf->len+len > buf->size) {
        buf->size = buf->len+len;
        buf->buf = FUNC0(buf->buf, buf->size);
    }

    FUNC1(buf->buf+buf->len, data, len);
    buf->len += len;
}