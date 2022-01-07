
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {int pszImagePath; } ;
typedef TYPE_1__* PSERVICE_IMAGE ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef int LPWSTR ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int DPRINT (char*,...) ;
 int ImageListEntry ;
 TYPE_2__ ImageListHead ;
 int SERVICE_IMAGE ;
 scalar_t__ _wcsicmp (int ,int ) ;

__attribute__((used)) static PSERVICE_IMAGE
ScmGetServiceImageByImagePath(LPWSTR lpImagePath)
{
    PLIST_ENTRY ImageEntry;
    PSERVICE_IMAGE CurrentImage;

    DPRINT("ScmGetServiceImageByImagePath(%S) called\n", lpImagePath);

    ImageEntry = ImageListHead.Flink;
    while (ImageEntry != &ImageListHead)
    {
        CurrentImage = CONTAINING_RECORD(ImageEntry,
                                         SERVICE_IMAGE,
                                         ImageListEntry);
        if (_wcsicmp(CurrentImage->pszImagePath, lpImagePath) == 0)
        {
            DPRINT("Found image: '%S'\n", CurrentImage->pszImagePath);
            return CurrentImage;
        }

        ImageEntry = ImageEntry->Flink;
    }

    DPRINT("Couldn't find a matching image\n");

    return ((void*)0);

}
