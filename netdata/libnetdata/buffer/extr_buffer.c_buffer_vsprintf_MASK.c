#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_5__ {int size; int len; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t,char const*,int /*<<< orphan*/ ) ; 

void FUNC4(BUFFER *wb, const char *fmt, va_list args)
{
    if(FUNC2(!fmt || !*fmt)) return;

    FUNC0(wb, 2);

    size_t len = wb->size - wb->len - 1;

    wb->len += FUNC3(&wb->buffer[wb->len], len, fmt, args);

    FUNC1(wb);

    // the buffer is \0 terminated by vsnprintfz
}