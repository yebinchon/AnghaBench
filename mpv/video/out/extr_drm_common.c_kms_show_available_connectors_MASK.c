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
struct mp_log {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  kms_show_connector_name_and_state_callback ; 
 int /*<<< orphan*/  FUNC0 (struct mp_log*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_log*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct mp_log *log, int card_no)
{
    FUNC1(log, "Available connectors for card %d:\n", card_no);
    FUNC0(
        log, card_no, kms_show_connector_name_and_state_callback);
    FUNC1(log, "\n");
}