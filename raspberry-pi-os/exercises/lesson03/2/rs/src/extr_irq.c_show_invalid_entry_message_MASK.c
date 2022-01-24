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

/* Variables and functions */
 char** entry_error_messages ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long,unsigned long) ; 

void FUNC1(int type, unsigned long esr,
                                unsigned long address) {
  FUNC0("%s, ESR: %x, address: %x\r\n", entry_error_messages[type], esr,
         address);
}