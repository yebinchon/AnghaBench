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
 int s_signal_received ; 
 int /*<<< orphan*/  FUNC0 (int,void (*) (int)) ; 

__attribute__((used)) static void FUNC1(int sig_num) {
  FUNC0(sig_num, signal_handler);  // Reinstantiate signal handler
  s_signal_received = sig_num;
}