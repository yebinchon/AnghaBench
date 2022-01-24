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
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char const*,char const*) ; 

unsigned int FUNC3(const char *prefix, const char *iface) {
    if(!prefix) prefix = "";

    char filename[FILENAME_MAX + 1];
    FUNC2(filename, FILENAME_MAX, "%s/sys/class/net/%s/ifindex", prefix, iface);

    unsigned long long ifindex = 0;
    int ret = FUNC1(filename, &ifindex);
    if(ret) FUNC0("Cannot read '%s'.", filename);

    return (unsigned int)ifindex;
}