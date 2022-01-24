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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 char const* FUNC1 (int) ; 

__attribute__((used)) static const char *FUNC2(int dlt)
{
#ifdef STATICPCAP
    return pcap_datalink_val_toName(dlt);
#endif
	FUNC0(1, dlt);
    return 0;
}