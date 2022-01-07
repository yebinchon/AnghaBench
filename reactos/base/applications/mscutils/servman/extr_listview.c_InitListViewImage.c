
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int hListView; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef scalar_t__ HIMAGELIST ;
typedef scalar_t__ HICON ;


 int DestroyIcon (scalar_t__) ;
 int GetSystemMetrics (int ) ;
 int IDI_SM_ICON ;
 int ILC_COLOR32 ;
 int ILC_MASK ;
 int IMAGE_ICON ;
 int ImageList_AddIcon (scalar_t__,scalar_t__) ;
 scalar_t__ ImageList_Create (int ,int ,int,int,int) ;
 int LVSIL_NORMAL ;
 int LVSIL_SMALL ;
 int ListView_SetImageList (int ,scalar_t__,int ) ;
 scalar_t__ LoadImageW (int ,int ,int ,int,int,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int SM_CXICON ;
 int SM_CXSMICON ;
 int SM_CYICON ;
 int SM_CYSMICON ;
 int hInstance ;

__attribute__((used)) static VOID
InitListViewImage(PMAIN_WND_INFO Info)
{
    HICON hSmIconItem, hLgIconItem;
    HIMAGELIST hSmall, hLarge;

    hSmall = ImageList_Create(GetSystemMetrics(SM_CXSMICON),
                              GetSystemMetrics(SM_CYSMICON),
                              ILC_MASK | ILC_COLOR32,
                              1,
                              1);
    if (hSmall)
    {
        hSmIconItem = LoadImageW(hInstance,
                                 MAKEINTRESOURCE(IDI_SM_ICON),
                                 IMAGE_ICON,
                                 16,
                                 16,
                                 0);
        if (hSmIconItem)
        {
            ImageList_AddIcon(hSmall,
                              hSmIconItem);
            (void)ListView_SetImageList(Info->hListView,
                                        hSmall,
                                        LVSIL_SMALL);

            DestroyIcon(hSmIconItem);
        }
    }

    hLarge = ImageList_Create(GetSystemMetrics(SM_CXICON),
                              GetSystemMetrics(SM_CYICON),
                              ILC_MASK | ILC_COLOR32,
                              1,
                              1);
    if (hLarge)
    {
        hLgIconItem = LoadImageW(hInstance,
                                 MAKEINTRESOURCE(IDI_SM_ICON),
                                 IMAGE_ICON,
                                 32,
                                 32,
                                 0);
        if (hLgIconItem)
        {
            ImageList_AddIcon(hLarge,
                              hLgIconItem);
            (void)ListView_SetImageList(Info->hListView,
                                        hLarge,
                                        LVSIL_NORMAL);
            DestroyIcon(hLgIconItem);
        }
    }
}
