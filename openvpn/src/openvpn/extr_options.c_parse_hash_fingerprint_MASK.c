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
typedef  scalar_t__ uint8_t ;
struct gc_arena {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (char*,char*,int*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static uint8_t *
FUNC4(const char *str, int nbytes, int msglevel, struct gc_arena *gc)
{
    int i;
    const char *cp = str;
    uint8_t *ret = (uint8_t *) FUNC0(nbytes, true, gc);
    char term = 1;
    int byte;
    char bs[3];

    for (i = 0; i < nbytes; ++i)
    {
        if (FUNC3(cp) < 2)
        {
            FUNC1(msglevel, "format error in hash fingerprint: %s", str);
        }
        bs[0] = *cp++;
        bs[1] = *cp++;
        bs[2] = 0;
        byte = 0;
        if (FUNC2(bs, "%x", &byte) != 1)
        {
            FUNC1(msglevel, "format error in hash fingerprint hex byte: %s", str);
        }
        ret[i] = (uint8_t)byte;
        term = *cp++;
        if (term != ':' && term != 0)
        {
            FUNC1(msglevel, "format error in hash fingerprint delimiter: %s", str);
        }
        if (term == 0)
        {
            break;
        }
    }
    if (term != 0 || i != nbytes-1)
    {
        FUNC1(msglevel, "hash fingerprint is different length than expected (%d bytes): %s", nbytes, str);
    }
    return ret;
}