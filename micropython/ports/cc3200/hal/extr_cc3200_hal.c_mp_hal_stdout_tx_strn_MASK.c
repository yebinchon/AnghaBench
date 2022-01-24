#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_2__ {int /*<<< orphan*/ * write; int /*<<< orphan*/  stream_o; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  mp_type_str ; 
 int /*<<< orphan*/  os_term_dup_obj ; 
 int /*<<< orphan*/  pyb_uart_type ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,size_t) ; 

void FUNC6(const char *str, size_t len) {
    if (FUNC0(os_term_dup_obj)) {
        if (FUNC2(FUNC0(os_term_dup_obj)->stream_o, &pyb_uart_type)) {
            FUNC5(FUNC0(os_term_dup_obj)->stream_o, str, len);
        } else {
            FUNC0(os_term_dup_obj)->write[2] = FUNC3(&mp_type_str, (const byte *)str, len);
            FUNC1(1, 0, FUNC0(os_term_dup_obj)->write);
        }
    }
    // and also to telnet
    FUNC4(str, len);
}