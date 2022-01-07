
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int * HIMAGELIST ;
typedef int HICON ;
typedef int BOOL ;


 int CX_ICON ;
 int CY_ICON ;
 int FALSE ;
 int IDI_BIN ;
 int IDI_STRING ;
 int ILC_MASK ;
 void* ImageList_AddIcon (int *,int ) ;
 int * ImageList_Create (int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ ImageList_GetImageCount (int *) ;
 void* Image_Bin ;
 void* Image_String ;
 scalar_t__ LISTVIEW_NUM_ICONS ;
 int LVSIL_SMALL ;
 int ListView_SetImageList (int ,int *,int ) ;
 int LoadIconW (int ,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int TRUE ;
 int hInst ;

__attribute__((used)) static BOOL InitListViewImageLists(HWND hwndLV)
{
    HIMAGELIST himl;
    HICON hico;


    if ((himl = ImageList_Create(CX_ICON, CY_ICON,
                                 ILC_MASK, 0, LISTVIEW_NUM_ICONS)) == ((void*)0))
    {
        return FALSE;
    }

    hico = LoadIconW(hInst, MAKEINTRESOURCEW(IDI_BIN));
    Image_Bin = ImageList_AddIcon(himl, hico);

    hico = LoadIconW(hInst, MAKEINTRESOURCEW(IDI_STRING));
    Image_String = ImageList_AddIcon(himl, hico);


    if (ImageList_GetImageCount(himl) < LISTVIEW_NUM_ICONS)
    {
        return FALSE;
    }


    (void)ListView_SetImageList(hwndLV, himl, LVSIL_SMALL);

    return TRUE;
}
