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
 int /*<<< orphan*/  N_RX_FILTERS ; 
 int /*<<< orphan*/  N_TX_TYPES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_filters ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tx_types ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC0("Usage: hwtstamp_config if_name [tx_type rx_filter]\n"
	      "tx_type is any of (case-insensitive):\n",
	      stderr);
	FUNC1(stderr, tx_types, N_TX_TYPES);
	FUNC0("rx_filter is any of (case-insensitive):\n", stderr);
	FUNC1(stderr, rx_filters, N_RX_FILTERS);
}