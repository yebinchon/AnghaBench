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
struct TYPE_6__ {char* buffer; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

void FUNC3(BUFFER *wb, const char *txt)
{
    while(*txt) {
        switch(*txt) {
            case '&': FUNC2(wb, "&amp;"); break;
            case '<': FUNC2(wb, "&lt;"); break;
            case '>': FUNC2(wb, "&gt;"); break;
            case '"': FUNC2(wb, "&quot;"); break;
            case '/': FUNC2(wb, "&#x2F;"); break;
            case '\'': FUNC2(wb, "&#x27;"); break;
            default: {
                FUNC0(wb, 1);
                wb->buffer[wb->len++] = *txt;
            }
        }
        txt++;
    }

    FUNC1(wb);
}