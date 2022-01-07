
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef scalar_t__ ULONG ;
typedef int UINT32 ;
struct TYPE_8__ {scalar_t__ FilePointer; scalar_t__ FileSize; int CurrentCluster; TYPE_1__* Volume; } ;
struct TYPE_7__ {int SectorsPerCluster; int BytesPerSector; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PFAT_VOLUME_INFO ;
typedef TYPE_2__* PFAT_FILE_INFO ;
typedef int BOOLEAN ;


 int ASSERT (int) ;
 int FALSE ;
 int FAT_IS_END_CLUSTER (int) ;
 int FatGetFatEntry (TYPE_1__*,int,int*) ;
 int FatReadClusterChain (TYPE_1__*,int,int,scalar_t__,int*) ;
 int FatReadPartialCluster (TYPE_1__*,int,int,scalar_t__,scalar_t__) ;
 int TRACE (char*,int,...) ;
 int TRUE ;
 int min (scalar_t__,int) ;

__attribute__((used)) static
BOOLEAN FatReadFile(PFAT_FILE_INFO FatFileInfo, ULONG BytesToRead, ULONG* BytesRead, PVOID Buffer)
{
    PFAT_VOLUME_INFO Volume = FatFileInfo->Volume;
    UINT32 NextClusterNumber, BytesPerCluster;

    TRACE("FatReadFile() BytesToRead = %d Buffer = 0x%x\n", BytesToRead, Buffer);

    if (BytesRead != ((void*)0))
    {
        *BytesRead = 0;
    }





    if (FatFileInfo->FilePointer >= FatFileInfo->FileSize)
    {
        return TRUE;
    }





    if ((FatFileInfo->FilePointer + BytesToRead) > FatFileInfo->FileSize)
    {
        BytesToRead = (FatFileInfo->FileSize - FatFileInfo->FilePointer);
    }
    BytesPerCluster = Volume->SectorsPerCluster * Volume->BytesPerSector;





    if (FatFileInfo->FilePointer % BytesPerCluster)
    {



        UINT32 OffsetInCluster = FatFileInfo->FilePointer % BytesPerCluster;
        UINT32 LengthInCluster = min(BytesToRead, BytesPerCluster - OffsetInCluster);

        ASSERT(LengthInCluster <= BytesPerCluster && LengthInCluster > 0);




        if (!FatReadPartialCluster(Volume, FatFileInfo->CurrentCluster, OffsetInCluster, LengthInCluster, Buffer))
        {
            return FALSE;
        }
        if (BytesRead != ((void*)0))
        {
            *BytesRead += LengthInCluster;
        }
        BytesToRead -= LengthInCluster;
        FatFileInfo->FilePointer += LengthInCluster;
        Buffer = (PVOID)((ULONG_PTR)Buffer + LengthInCluster);


        if ((LengthInCluster + OffsetInCluster) == BytesPerCluster)
        {
            if (!FatGetFatEntry(Volume, FatFileInfo->CurrentCluster, &NextClusterNumber))
            {
                return FALSE;
            }

            FatFileInfo->CurrentCluster = NextClusterNumber;
            TRACE("FatReadFile() FatFileInfo->CurrentCluster = 0x%x\n", FatFileInfo->CurrentCluster);
        }
    }




    if (BytesToRead > 0)
    {



        UINT32 NumberOfClusters = BytesToRead / BytesPerCluster;

        TRACE("Going to read: %u clusters\n", NumberOfClusters);

        if (NumberOfClusters > 0)
        {
            UINT32 BytesReadHere = NumberOfClusters * BytesPerCluster;

            ASSERT(!FAT_IS_END_CLUSTER(FatFileInfo->CurrentCluster));

            if (!FatReadClusterChain(Volume, FatFileInfo->CurrentCluster, NumberOfClusters, Buffer, &NextClusterNumber))
            {
                return FALSE;
            }

            if (BytesRead != ((void*)0))
            {
                *BytesRead += BytesReadHere;
            }
            BytesToRead -= BytesReadHere;
            Buffer = (PVOID)((ULONG_PTR)Buffer + BytesReadHere);

            ASSERT(!FAT_IS_END_CLUSTER(NextClusterNumber) || BytesToRead == 0);

            FatFileInfo->FilePointer += BytesReadHere;
            FatFileInfo->CurrentCluster = NextClusterNumber;
            TRACE("FatReadFile() FatFileInfo->CurrentCluster = 0x%x\n", FatFileInfo->CurrentCluster);
        }
    }




    if (BytesToRead > 0)
    {
        ASSERT(!FAT_IS_END_CLUSTER(FatFileInfo->CurrentCluster));




        if (!FatReadPartialCluster(Volume, FatFileInfo->CurrentCluster, 0, BytesToRead, Buffer))
        {
            return FALSE;
        }
        if (BytesRead != ((void*)0))
        {
            *BytesRead += BytesToRead;
        }
        FatFileInfo->FilePointer += BytesToRead;
        BytesToRead -= BytesToRead;
        Buffer = (PVOID)((ULONG_PTR)Buffer + BytesToRead);
    }

    return TRUE;
}
