
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
DiskIsDriveRemovable(UCHAR DriveNumber)
{





    if ((DriveNumber >= 0x80) || (DriveNumber == 0x49))
        return FALSE;


    return TRUE;
}
