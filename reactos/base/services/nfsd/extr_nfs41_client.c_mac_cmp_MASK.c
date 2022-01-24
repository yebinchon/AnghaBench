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
struct mac_entry {int length; scalar_t__ address; } ;

/* Variables and functions */
 int FUNC0 (char const*,char const*,int) ; 

int FUNC1(struct mac_entry *lhs, struct mac_entry *rhs)
{
    const int diff = rhs->length - lhs->length;
    return diff ? diff : FUNC0((const char*)lhs->address,
        (const char*)rhs->address, lhs->length);
}