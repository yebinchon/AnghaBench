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
typedef  int bit8u ;
typedef  int /*<<< orphan*/  bit32u ;

/* Variables and functions */
 int AddressCurrent ; 
 int RecLength ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fOut ; 
 int FUNC1 (int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

void FUNC3 ( bit8u Data )
{
    int n;
    FUNC0("B4Data" , (bit32u) (Data & 0xFF) );
    n = FUNC1( &Data, sizeof(bit8u), 1, fOut);
    if (n != 1)
        FUNC2("Error in writing %X for Address 0x%8X\n", Data, AddressCurrent);
    RecLength += 1;
}