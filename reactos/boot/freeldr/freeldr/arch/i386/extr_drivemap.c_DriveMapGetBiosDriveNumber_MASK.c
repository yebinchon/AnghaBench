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
typedef  int UCHAR ;
typedef  char* PCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

UCHAR FUNC3(PCSTR DeviceName)
{
    UCHAR BiosDriveNumber = 0;

    FUNC0("DriveMapGetBiosDriveNumber(%s)\n", DeviceName);

    // If they passed in a number string then just
    // convert it to decimal and return it
    if (DeviceName[0] >= '0' && DeviceName[0] <= '9')
    {
        return (UCHAR)FUNC2(DeviceName, NULL, 0);
    }

    // Convert the drive number string into a number
    // 'hd1' = 1
    BiosDriveNumber = FUNC1(&DeviceName[2]);

    // If it's a hard disk then set the high bit
    if ((DeviceName[0] == 'h' || DeviceName[0] == 'H') &&
        (DeviceName[1] == 'd' || DeviceName[1] == 'D'))
    {
        BiosDriveNumber |= 0x80;
    }

    return BiosDriveNumber;
}