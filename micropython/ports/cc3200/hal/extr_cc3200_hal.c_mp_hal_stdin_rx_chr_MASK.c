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
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_4__ {scalar_t__ buf; } ;
typedef  TYPE_1__ mp_buffer_info_t ;
struct TYPE_5__ {int /*<<< orphan*/ * read; int /*<<< orphan*/  stream_o; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_BUFFER_READ ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  os_term_dup_obj ; 
 int /*<<< orphan*/  pyb_uart_type ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(void) {
    for ( ;; ) {
        // read telnet first
        if (FUNC7()) {
            return FUNC8();
        } else if (FUNC0(os_term_dup_obj)) { // then the stdio_dup
            if (FUNC5(FUNC0(os_term_dup_obj)->stream_o, &pyb_uart_type)) {
                if (FUNC9(FUNC0(os_term_dup_obj)->stream_o)) {
                    return FUNC10(FUNC0(os_term_dup_obj)->stream_o);
                }
            } else {
                FUNC0(os_term_dup_obj)->read[2] = FUNC6(1);
                mp_obj_t data = FUNC1(1, 0, FUNC0(os_term_dup_obj)->read);
                // data len is > 0
                if (FUNC4(data)) {
                    mp_buffer_info_t bufinfo;
                    FUNC2(data, &bufinfo, MP_BUFFER_READ);
                    return ((int *)(bufinfo.buf))[0];
                }
            }
        }
        FUNC3(1);
    }
}