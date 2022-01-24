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
 char* FUNC0 (double,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(char **buf, double time, bool fractions)
{
    char *s = FUNC0(time, fractions);
    *buf = FUNC2(*buf, s);
    FUNC1(s);
}