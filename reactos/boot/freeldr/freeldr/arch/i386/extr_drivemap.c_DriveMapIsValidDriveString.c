
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef float* PCSTR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int atoi (float*) ;
 size_t strlen (float*) ;

BOOLEAN DriveMapIsValidDriveString(PCSTR DriveString)
{
    ULONG Index;


    if ((strlen(DriveString) < 3) ||
        ((DriveString[0] != 'f') && (DriveString[0] != 'F') &&
         (DriveString[0] != 'h') && (DriveString[0] != 'H')) ||
        ((DriveString[1] != 'd') && (DriveString[1] != 'D')))
    {
        return FALSE;
    }



    for (Index = 2; Index < strlen(DriveString); Index++)
    {
        if (DriveString[Index] < '0' || DriveString[Index] > '9')
        {
            return FALSE;
        }
    }


    if ((atoi(&DriveString[2]) < 0) || (atoi(&DriveString[2]) > 0xff))
    {
        return FALSE;
    }

    return TRUE;
}
