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
typedef  int /*<<< orphan*/  calculated_number ;
struct TYPE_6__ {size_t len; char* buffer; } ;
typedef  TYPE_1__ BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

void FUNC6(BUFFER *wb, calculated_number value)
{
    FUNC0(wb, 50);

    if(FUNC4(value) || FUNC3(value)) {
        FUNC2(wb, "null");
        return;
    }
    else
        wb->len += FUNC5(&wb->buffer[wb->len], value);

    // terminate it
    FUNC0(wb, 1);
    wb->buffer[wb->len] = '\0';

    FUNC1(wb);
}