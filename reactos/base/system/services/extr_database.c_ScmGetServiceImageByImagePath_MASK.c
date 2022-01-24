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
struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {int /*<<< orphan*/  pszImagePath; } ;
typedef  TYPE_1__* PSERVICE_IMAGE ;
typedef  TYPE_2__* PLIST_ENTRY ;
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  ImageListEntry ; 
 TYPE_2__ ImageListHead ; 
 int /*<<< orphan*/  SERVICE_IMAGE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PSERVICE_IMAGE
FUNC3(LPWSTR lpImagePath)
{
    PLIST_ENTRY ImageEntry;
    PSERVICE_IMAGE CurrentImage;

    FUNC1("ScmGetServiceImageByImagePath(%S) called\n", lpImagePath);

    ImageEntry = ImageListHead.Flink;
    while (ImageEntry != &ImageListHead)
    {
        CurrentImage = FUNC0(ImageEntry,
                                         SERVICE_IMAGE,
                                         ImageListEntry);
        if (FUNC2(CurrentImage->pszImagePath, lpImagePath) == 0)
        {
            FUNC1("Found image: '%S'\n", CurrentImage->pszImagePath);
            return CurrentImage;
        }

        ImageEntry = ImageEntry->Flink;
    }

    FUNC1("Couldn't find a matching image\n");

    return NULL;

}