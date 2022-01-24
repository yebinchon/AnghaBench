#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* buffer; size_t len; size_t size; } ;
typedef  TYPE_1__ BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,size_t) ; 
 size_t FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(BUFFER *wb, const char *txt)
{
    // buffer_sprintf(wb, "%s", txt);

    if(FUNC5(!txt || !*txt)) return;

    FUNC1(wb, 1);

    char *s = &wb->buffer[wb->len], *start, *end = &wb->buffer[wb->size];
    size_t len = wb->len;

    start = s;
    while(*txt && s != end)
        *s++ = *txt++;

    len += s - start;

    wb->len = len;
    FUNC2(wb);

    if(*txt) {
        FUNC3(D_WEB_BUFFER, "strcat(): increasing web_buffer at position %zu, size = %zu\n", wb->len, wb->size);
        len = FUNC4(txt);
        FUNC0(wb, len);
        FUNC6(wb, txt);
    }
    else {
        // terminate the string
        // without increasing the length
        FUNC1(wb, (size_t)1);
        wb->buffer[wb->len] = '\0';
    }
}