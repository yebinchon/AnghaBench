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
struct ifaddrs {char* ifa_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static inline bool FUNC1(struct ifaddrs *ifa)
{
	const char *n = ifa->ifa_name;
	return n && (FUNC0(n, "lo") == 0 || FUNC0(n, "lo0") == 0);
}