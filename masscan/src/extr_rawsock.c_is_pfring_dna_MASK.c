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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const char *name)
{
    if (FUNC2(name) < 4)
        return 0;
    if (FUNC1(name, "zc:", 3) == 0)
        return 1;
    if (FUNC1(name, "dna", 3) != 0)
        return 0;

    name +=3;

    if (!FUNC0(name[0]&0xFF))
        return 0;
    while (FUNC0(name[0]&0xFF))
        name++;

    if (name[0] == '\0')
        return 1;

    if (name[0] != '@')
        return 0;
    else
        name++;

    if (!FUNC0(name[0]&0xFF))
        return 0;
    while (FUNC0(name[0]&0xFF))
        name++;

    if (name[0] == '\0')
        return 1;
    else
        return 0;
}