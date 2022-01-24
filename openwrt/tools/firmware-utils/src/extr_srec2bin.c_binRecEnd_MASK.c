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
 int CheckSum ; 
 scalar_t__ FALSE ; 
 int RecLength ; 
 scalar_t__ RecStart ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  fOut ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,...) ; 
 scalar_t__ verbose ; 

void FUNC5(void)
{
    long RecEnd;

    if (!RecStart)   //  if no record started, do not end it
    {
        return;
    }

    RecStart = FALSE;


    RecEnd = FUNC3(fOut);         // Save Current position

    if (debug)
          FUNC4("[RecEnd  ] CheckSum[0x%08X] Length[%4d] Length[0x%X] RecEnd[0x%08lX]\n",
                CheckSum, RecLength, RecLength, RecEnd);

    FUNC2( fOut, -((long) RecLength), SEEK_CUR);  // move back Start Of Data

    FUNC1("Data   ", -1);

    FUNC2( fOut, -4, SEEK_CUR);  // move back Start Of Address

    FUNC1("Address   ", -1);

    FUNC2( fOut, -4, SEEK_CUR);  // move back Start Of Length

    FUNC1("Length   ", -1);

    FUNC0( RecLength );

    FUNC2( fOut, RecEnd, SEEK_SET);  // move to end of Record

    CheckSum += RecLength;

    CheckSum =  ~CheckSum + 1;  // Two's complement

    FUNC0( CheckSum );

    if (verbose)
        FUNC4("[Created Record of %d Bytes with CheckSum [0x%8X]\n", RecLength, CheckSum);
}