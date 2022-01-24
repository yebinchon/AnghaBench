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
 unsigned int Xend ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* counts ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2()
{
    unsigned i;
    const char *count_names[] = {
        "Unknown", "NAS", "WiFi", "FW", "X509",
        "Conf", "VM", "Cam", "VPN", "PBX", "Printer",
        "default", "mail", "admin", "AV", "honeypot", "box",
        0, "", "", ""};

    FUNC1("----counts----\n");
    for (i=0; i<Xend; i++) {
        FUNC1("%10u %s\n", counts[i], count_names[i]);
    }
    FUNC1("---------------\n");

    FUNC0(count_names[i] == NULL);
}