#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG_PTR ;
typedef  scalar_t__ ULONG ;
typedef  int UINT32 ;
struct TYPE_8__ {scalar_t__ FilePointer; scalar_t__ FileSize; int CurrentCluster; TYPE_1__* Volume; } ;
struct TYPE_7__ {int SectorsPerCluster; int BytesPerSector; } ;
typedef  scalar_t__ PVOID ;
typedef  TYPE_1__* PFAT_VOLUME_INFO ;
typedef  TYPE_2__* PFAT_FILE_INFO ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC6 (scalar_t__,int) ; 

__attribute__((used)) static
BOOLEAN FUNC7(PFAT_FILE_INFO FatFileInfo, ULONG BytesToRead, ULONG* BytesRead, PVOID Buffer)
{
    PFAT_VOLUME_INFO Volume = FatFileInfo->Volume;
    UINT32 NextClusterNumber, BytesPerCluster;

    FUNC5("FatReadFile() BytesToRead = %d Buffer = 0x%x\n", BytesToRead, Buffer);

    if (BytesRead != NULL)
    {
        *BytesRead = 0;
    }

    //
    // If the user is trying to read past the end of
    // the file then return success with BytesRead == 0.
    //
    if (FatFileInfo->FilePointer >= FatFileInfo->FileSize)
    {
        return TRUE;
    }

    //
    // If the user is trying to read more than there is to read
    // then adjust the amount to read.
    //
    if ((FatFileInfo->FilePointer + BytesToRead) > FatFileInfo->FileSize)
    {
        BytesToRead = (FatFileInfo->FileSize - FatFileInfo->FilePointer);
    }

    //
    // Ok, now we have to perform at most 3 calculations
    // I'll draw you a picture (using nifty ASCII art):
    //
    // CurrentFilePointer -+
    //                     |
    //    +----------------+
    //    |
    // +-----------+-----------+-----------+-----------+
    // | Cluster 1 | Cluster 2 | Cluster 3 | Cluster 4 |
    // +-----------+-----------+-----------+-----------+
    //    |                                    |
    //    +---------------+--------------------+
    //                    |
    // BytesToRead -------+
    //
    // 1 - The first calculation (and read) will align
    //     the file pointer with the next cluster.
    //     boundary (if we are supposed to read that much)
    // 2 - The next calculation (and read) will read
    //     in all the full clusters that the requested
    //     amount of data would cover (in this case
    //     clusters 2 & 3).
    // 3 - The last calculation (and read) would read
    //     in the remainder of the data requested out of
    //     the last cluster.
    //

    BytesPerCluster = Volume->SectorsPerCluster * Volume->BytesPerSector;

    //
    // Only do the first read if we
    // aren't aligned on a cluster boundary
    //
    if (FatFileInfo->FilePointer % BytesPerCluster)
    {
        //
        // Do the math for our first read
        //
        UINT32 OffsetInCluster = FatFileInfo->FilePointer % BytesPerCluster;
        UINT32 LengthInCluster = FUNC6(BytesToRead, BytesPerCluster - OffsetInCluster);

        FUNC0(LengthInCluster <= BytesPerCluster && LengthInCluster > 0);

        //
        // Now do the read and update BytesRead, BytesToRead, FilePointer, & Buffer
        //
        if (!FUNC4(Volume, FatFileInfo->CurrentCluster, OffsetInCluster, LengthInCluster, Buffer))
        {
            return FALSE;
        }
        if (BytesRead != NULL)
        {
            *BytesRead += LengthInCluster;
        }
        BytesToRead -= LengthInCluster;
        FatFileInfo->FilePointer += LengthInCluster;
        Buffer = (PVOID)((ULONG_PTR)Buffer + LengthInCluster);

        // get the next cluster if needed
        if ((LengthInCluster + OffsetInCluster) == BytesPerCluster)
        {
            if (!FUNC2(Volume, FatFileInfo->CurrentCluster, &NextClusterNumber))
            {
                return FALSE;
            }

            FatFileInfo->CurrentCluster = NextClusterNumber;
            FUNC5("FatReadFile() FatFileInfo->CurrentCluster = 0x%x\n", FatFileInfo->CurrentCluster);
        }
    }

    //
    // Do the math for our second read (if any data left)
    //
    if (BytesToRead > 0)
    {
        //
        // Determine how many full clusters we need to read
        //
        UINT32 NumberOfClusters = BytesToRead / BytesPerCluster;

        FUNC5("Going to read: %u clusters\n", NumberOfClusters);

        if (NumberOfClusters > 0)
        {
            UINT32 BytesReadHere = NumberOfClusters * BytesPerCluster;

            FUNC0(!FUNC1(FatFileInfo->CurrentCluster));

            if (!FUNC3(Volume, FatFileInfo->CurrentCluster, NumberOfClusters, Buffer, &NextClusterNumber))
            {
                return FALSE;
            }

            if (BytesRead != NULL)
            {
                *BytesRead += BytesReadHere;
            }
            BytesToRead -= BytesReadHere;
            Buffer = (PVOID)((ULONG_PTR)Buffer + BytesReadHere);

            FUNC0(!FUNC1(NextClusterNumber) || BytesToRead == 0);

            FatFileInfo->FilePointer += BytesReadHere;
            FatFileInfo->CurrentCluster = NextClusterNumber;
            FUNC5("FatReadFile() FatFileInfo->CurrentCluster = 0x%x\n", FatFileInfo->CurrentCluster);
        }
    }

    //
    // Do the math for our third read (if any data left)
    //
    if (BytesToRead > 0)
    {
        FUNC0(!FUNC1(FatFileInfo->CurrentCluster));

        //
        // Now do the read and update BytesRead, BytesToRead, FilePointer, & Buffer
        //
        if (!FUNC4(Volume, FatFileInfo->CurrentCluster, 0, BytesToRead, Buffer))
        {
            return FALSE;
        }
        if (BytesRead != NULL)
        {
            *BytesRead += BytesToRead;
        }
        FatFileInfo->FilePointer += BytesToRead;
        BytesToRead -= BytesToRead;
        Buffer = (PVOID)((ULONG_PTR)Buffer + BytesToRead);
    }

    return TRUE;
}