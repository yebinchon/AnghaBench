
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
typedef scalar_t__ UINT32 ;
struct TYPE_11__ {int Attributes; scalar_t__ StartCluster; } ;
struct TYPE_10__ {int FatType; } ;
typedef int * PVOID ;
typedef TYPE_1__* PFAT_VOLUME_INFO ;
typedef int PFAT_FILE_INFO ;
typedef char* PCSTR ;
typedef TYPE_2__ FAT_FILE_INFO ;
typedef int CHAR ;
typedef int ARC_STATUS ;


 int ATTR_DIRECTORY ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTDIR ;
 int ESUCCESS ;
 int * FatBufferDirectory (TYPE_1__*,scalar_t__,scalar_t__*,int) ;
 int FatSearchDirectoryBufferForFile (TYPE_1__*,int *,scalar_t__,int *,TYPE_2__*) ;
 int FatXSearchDirectoryBufferForFile (TYPE_1__*,int *,scalar_t__,int *,TYPE_2__*) ;
 int FsGetFirstNameFromPath (int *,char*) ;
 scalar_t__ FsGetNumPathParts (char*) ;
 scalar_t__ ISFATX (int ) ;
 int TRACE (char*,char*) ;
 int memcpy (int ,TYPE_2__*,int) ;
 int memset (int ,int ,int) ;

ARC_STATUS FatLookupFile(PFAT_VOLUME_INFO Volume, PCSTR FileName, PFAT_FILE_INFO FatFileInfoPointer)
{
    UINT32 i;
    ULONG NumberOfPathParts;
    CHAR PathPart[261];
    PVOID DirectoryBuffer;
    ULONG DirectoryStartCluster = 0;
    ULONG DirectorySize;
    FAT_FILE_INFO FatFileInfo;

    TRACE("FatLookupFile() FileName = %s\n", FileName);

    memset(FatFileInfoPointer, 0, sizeof(FAT_FILE_INFO));




    NumberOfPathParts = FsGetNumPathParts(FileName);




    for (i=0; i<NumberOfPathParts; i++)
    {



        FsGetFirstNameFromPath(PathPart, FileName);




        for (; (*FileName != '\\') && (*FileName != '/') && (*FileName != '\0'); FileName++)
        {
        }
        FileName++;




        DirectoryBuffer = FatBufferDirectory(Volume, DirectoryStartCluster, &DirectorySize, (i == 0) );
        if (DirectoryBuffer == ((void*)0))
        {
            return ENOMEM;
        }




        if (ISFATX(Volume->FatType))
        {
            if (!FatXSearchDirectoryBufferForFile(Volume, DirectoryBuffer, DirectorySize, PathPart, &FatFileInfo))
            {
                return ENOENT;
            }
        }
        else
        {
            if (!FatSearchDirectoryBufferForFile(Volume, DirectoryBuffer, DirectorySize, PathPart, &FatFileInfo))
            {
                return ENOENT;
            }
        }





        if ((i+1) < NumberOfPathParts)
        {



            if (!(FatFileInfo.Attributes & ATTR_DIRECTORY))
            {
                return ENOTDIR;
            }
            DirectoryStartCluster = FatFileInfo.StartCluster;
        }
    }

    memcpy(FatFileInfoPointer, &FatFileInfo, sizeof(FAT_FILE_INFO));

    return ESUCCESS;
}
