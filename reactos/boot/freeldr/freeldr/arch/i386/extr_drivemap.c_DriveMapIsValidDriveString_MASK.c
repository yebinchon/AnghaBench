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
typedef  size_t ULONG ;
typedef  float* PCSTR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (float*) ; 
 size_t FUNC1 (float*) ; 

BOOLEAN FUNC2(PCSTR DriveString)
{
    ULONG Index;

    // Now verify that the user has given us appropriate strings
    if ((FUNC1(DriveString) < 3) ||
        ((DriveString[0] != 'f') && (DriveString[0] != 'F') &&
         (DriveString[0] != 'h') && (DriveString[0] != 'H')) ||
        ((DriveString[1] != 'd') && (DriveString[1] != 'D')))
    {
        return FALSE;
    }

    // Now verify that the user has given us appropriate numbers
    // Make sure that only numeric characters were given
    for (Index = 2; Index < FUNC1(DriveString); Index++)
    {
        if (DriveString[Index] < '0' || DriveString[Index] > '9')
        {
            return FALSE;
        }
    }

    // Now make sure that they are not outrageous values (i.e. hd90874)
    if ((FUNC0(&DriveString[2]) < 0) || (FUNC0(&DriveString[2]) > 0xff))
    {
        return FALSE;
    }

    return TRUE;
}