
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
typedef char* PCHAR ;


 int sprintf (char*,char*,int,...) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

VOID ConstructArcPath(PCHAR ArcPath, PCHAR SystemFolder, UCHAR Disk, ULONG Partition)
{
    char tmp[50];

    strcpy(ArcPath, "multi(0)disk(0)");

    if (Disk < 0x80)
    {




        sprintf(tmp, "fdisk(%d)", (int) Disk);
        strcat(ArcPath, tmp);
    }
    else
    {




        sprintf(tmp, "rdisk(%d)partition(%d)", (int) (Disk - 0x80), (int) Partition);
        strcat(ArcPath, tmp);
    }

    if (SystemFolder[0] == '\\' || SystemFolder[0] == '/')
    {
        strcat(ArcPath, SystemFolder);
    }
    else
    {
        strcat(ArcPath, "\\");
        strcat(ArcPath, SystemFolder);
    }
}
