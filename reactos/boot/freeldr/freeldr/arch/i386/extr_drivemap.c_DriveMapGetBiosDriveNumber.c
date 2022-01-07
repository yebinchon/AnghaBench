
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef char* PCSTR ;


 int TRACE (char*,char*) ;
 int atoi (char*) ;
 int strtoul (char*,int *,int ) ;

UCHAR DriveMapGetBiosDriveNumber(PCSTR DeviceName)
{
    UCHAR BiosDriveNumber = 0;

    TRACE("DriveMapGetBiosDriveNumber(%s)\n", DeviceName);



    if (DeviceName[0] >= '0' && DeviceName[0] <= '9')
    {
        return (UCHAR)strtoul(DeviceName, ((void*)0), 0);
    }



    BiosDriveNumber = atoi(&DeviceName[2]);


    if ((DeviceName[0] == 'h' || DeviceName[0] == 'H') &&
        (DeviceName[1] == 'd' || DeviceName[1] == 'D'))
    {
        BiosDriveNumber |= 0x80;
    }

    return BiosDriveNumber;
}
