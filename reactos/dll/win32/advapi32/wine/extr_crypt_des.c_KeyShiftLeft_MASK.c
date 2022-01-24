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
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 scalar_t__ FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 

__attribute__((used)) static void FUNC3( unsigned char *key, const int numbits )
{
    int i;
    unsigned char keep = key[0];

    for (i = 0; i < numbits; i++)
    {
        int j;

        for (j = 0; j < 7; j++)
        {
            if (j && (key[j] & 0x80))
                key[j-1] |=  0x01;
            key[j] <<= 1;
        }

        if (FUNC1( key, 27 ))
        {
            FUNC0( key, 27 );
            FUNC2( key, 55 );
        }

        if (keep & 0x80)
            FUNC2( key, 27 );

        keep <<= 1;
    }
}