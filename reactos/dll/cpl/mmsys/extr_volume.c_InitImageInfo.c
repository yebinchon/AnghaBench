
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {int bmHeight; int bmWidth; } ;
struct TYPE_6__ {int cySource; int cxSource; int * hBitmap; } ;
typedef TYPE_1__* PIMGINFO ;
typedef TYPE_2__ BITMAP ;


 int GetObject (int *,int,TYPE_2__*) ;
 int IDB_SPEAKIMG ;
 int IMAGE_BITMAP ;
 int LR_DEFAULTCOLOR ;
 int * LoadImage (int ,int ,int ,int ,int ,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int hApplet ;

__attribute__((used)) static VOID
InitImageInfo(PIMGINFO ImgInfo)
{
    BITMAP bitmap;

    ZeroMemory(ImgInfo, sizeof(*ImgInfo));

    ImgInfo->hBitmap = LoadImage(hApplet,
                                 MAKEINTRESOURCE(IDB_SPEAKIMG),
                                 IMAGE_BITMAP,
                                 0,
                                 0,
                                 LR_DEFAULTCOLOR);

    if (ImgInfo->hBitmap != ((void*)0))
    {
        GetObject(ImgInfo->hBitmap, sizeof(BITMAP), &bitmap);

        ImgInfo->cxSource = bitmap.bmWidth;
        ImgInfo->cySource = bitmap.bmHeight;
    }
}
