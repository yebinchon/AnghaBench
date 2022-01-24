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
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_1__ RRDR ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int RRDR_OPTION_GOOGLE_JSON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void FUNC3(RRDR *r, BUFFER *wb, uint32_t format, uint32_t options, int string_value) {
    (void)format;

    char kq[2] = "",                    // key quote
            sq[2] = "";                     // string quote

    if( options & RRDR_OPTION_GOOGLE_JSON ) {
        kq[0] = '\0';
        sq[0] = '\'';
    }
    else {
        kq[0] = '"';
        sq[0] = '"';
    }

    if(string_value) FUNC2(wb, sq);

    FUNC1(wb, ",\n %smin%s: ", kq, kq);
    FUNC0(wb, r->min);
    FUNC1(wb, ",\n %smax%s: ", kq, kq);
    FUNC0(wb, r->max);
    FUNC2(wb, "\n}\n");
}