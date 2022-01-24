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
 int HEIGHT_SORT_BITS ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int s)
{
    int n = FUNC0(s);
    return (n << HEIGHT_SORT_BITS)
       + ((- 1 - (s << HEIGHT_SORT_BITS >> n)) & ((1 << HEIGHT_SORT_BITS) - 1));
}