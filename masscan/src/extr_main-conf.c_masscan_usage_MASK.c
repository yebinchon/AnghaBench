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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(void)
{
    FUNC1("usage:\n");
    FUNC1("masscan -p80,8000-8100 10.0.0.0/8 --rate=10000\n");
    FUNC1(" scan some web ports on 10.x.x.x at 10kpps\n");
    FUNC1("masscan --nmap\n");
    FUNC1(" list those options that are compatible with nmap\n");
    FUNC1("masscan -p80 10.0.0.0/8 --banners -oB <filename>\n");
    FUNC1(" save results of scan in binary format to <filename>\n");
    FUNC1("masscan --open --banners --readscan <filename> -oX <savefile>\n");
    FUNC1(" read binary scan results in <filename> and save them as xml in <savefile>\n");
    FUNC0(1);
}