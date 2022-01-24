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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ ULONG ;
typedef  int UCHAR ;
typedef  char* PCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

VOID FUNC3(PCHAR ArcPath, PCHAR SystemFolder, UCHAR Disk, ULONG Partition)
{
    char    tmp[50];

    FUNC2(ArcPath, "multi(0)disk(0)");

    if (Disk < 0x80)
    {
        /*
         * Floppy disk path:
         *  multi(0)disk(0)fdisk(x)\path
         */
        FUNC0(tmp, "fdisk(%d)", (int) Disk);
        FUNC1(ArcPath, tmp);
    }
    else
    {
        /*
         * Hard disk path:
         *  multi(0)disk(0)rdisk(x)partition(y)\path
         */
        FUNC0(tmp, "rdisk(%d)partition(%d)", (int) (Disk - 0x80), (int) Partition);
        FUNC1(ArcPath, tmp);
    }

    if (SystemFolder[0] == '\\' || SystemFolder[0] == '/')
    {
        FUNC1(ArcPath, SystemFolder);
    }
    else
    {
        FUNC1(ArcPath, "\\");
        FUNC1(ArcPath, SystemFolder);
    }
}