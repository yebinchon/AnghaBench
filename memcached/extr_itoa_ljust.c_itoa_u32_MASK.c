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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int,int,int*,char**,int) ; 
 char* FUNC1 (int,char*,int,int) ; 

char* FUNC2(uint32_t u, char* p) {
    int d = 0,n;
         if (u >=100000000) n = FUNC0(u, 100000000, &d, &p, 10);
    else if (u <       100) n = FUNC0(u,         1, &d, &p,  2);
    else if (u <     10000) n = FUNC0(u,       100, &d, &p,  4);
    else if (u <   1000000) n = FUNC0(u,     10000, &d, &p,  6);
    else                    n = FUNC0(u,   1000000, &d, &p,  8);
    return FUNC1( u, p, d, n );
}