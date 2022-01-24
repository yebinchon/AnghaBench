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
typedef  int /*<<< orphan*/  udd_ep_status_t ;
typedef  int /*<<< orphan*/  udd_ep_id_t ;
typedef  int /*<<< orphan*/  iram_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int udi_hid_kbd_b_report_trans_ongoing ; 
 scalar_t__ udi_hid_kbd_b_report_valid ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(udd_ep_status_t status, iram_size_t nb_sent, udd_ep_id_t ep) {
    FUNC0(status);
    FUNC0(nb_sent);
    FUNC0(ep);
    udi_hid_kbd_b_report_trans_ongoing = false;
    if (udi_hid_kbd_b_report_valid) {
        FUNC1();
    }
}