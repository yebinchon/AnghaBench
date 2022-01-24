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
typedef  int /*<<< orphan*/  utf8_char_t ;

/* Variables and functions */
 double FUNC0 (double,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,char*,int*,int*,int*,...) ; 

double FUNC2(const utf8_char_t* line)
{
    int hh, mm, ss, ms;
    if (FUNC1(line, "%d:%2d:%2d%*1[,.]%3d", &hh, &mm, &ss, &ms) == 4) {
        return FUNC0(hh, mm, ss, ms);
    }
    if (FUNC1(line, "%2d:%2d%*1[,.]%3d", &mm, &ss, &ms) == 3) {
        return FUNC0(0.0, mm, ss, ms);
    }
    return -1.0;
}