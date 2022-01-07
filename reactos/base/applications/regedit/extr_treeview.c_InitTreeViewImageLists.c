
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int * HIMAGELIST ;
typedef scalar_t__ HICON ;
typedef int BOOL ;


 int DestroyIcon (scalar_t__) ;
 int FALSE ;
 int GetSystemMetrics (int ) ;
 int IDI_CLOSED_FILE ;
 int IDI_OPEN_FILE ;
 int IDI_ROOT ;
 int ILC_COLOR32 ;
 int ILC_MASK ;
 int IMAGE_ICON ;
 void* ImageList_AddIcon (int *,scalar_t__) ;
 int * ImageList_Create (int ,int ,int,int ,scalar_t__) ;
 int ImageList_Destroy (int *) ;
 scalar_t__ ImageList_GetImageCount (int *) ;
 void* Image_Closed ;
 void* Image_Open ;
 void* Image_Root ;
 scalar_t__ LoadImageW (int ,int ,int ,int ,int ,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 scalar_t__ NUM_ICONS ;
 int SM_CXSMICON ;
 int SM_CYSMICON ;
 int TRUE ;
 int TVSIL_NORMAL ;
 int TreeView_SetImageList (int ,int *,int ) ;
 int hInst ;

__attribute__((used)) static BOOL InitTreeViewImageLists(HWND hwndTV)
{
    HIMAGELIST himl;
    HICON hico;


    if ((himl = ImageList_Create(GetSystemMetrics(SM_CXSMICON),
                                 GetSystemMetrics(SM_CYSMICON),
                                 ILC_MASK | ILC_COLOR32,
                                 0,
                                 NUM_ICONS)) == ((void*)0))
    {
        return FALSE;
    }


    hico = LoadImageW(hInst,
                      MAKEINTRESOURCEW(IDI_OPEN_FILE),
                      IMAGE_ICON,
                      GetSystemMetrics(SM_CXSMICON),
                      GetSystemMetrics(SM_CYSMICON),
                      0);
    if (hico)
    {
        Image_Open = ImageList_AddIcon(himl, hico);
        DestroyIcon(hico);
    }

    hico = LoadImageW(hInst,
                      MAKEINTRESOURCEW(IDI_CLOSED_FILE),
                      IMAGE_ICON,
                      GetSystemMetrics(SM_CXSMICON),
                      GetSystemMetrics(SM_CYSMICON),
                      0);
    if (hico)
    {
        Image_Closed = ImageList_AddIcon(himl, hico);
        DestroyIcon(hico);
    }

    hico = LoadImageW(hInst,
                      MAKEINTRESOURCEW(IDI_ROOT),
                      IMAGE_ICON,
                      GetSystemMetrics(SM_CXSMICON),
                      GetSystemMetrics(SM_CYSMICON),
                      0);
    if (hico)
    {
        Image_Root = ImageList_AddIcon(himl, hico);
        DestroyIcon(hico);
    }


    if (ImageList_GetImageCount(himl) < NUM_ICONS)
    {
        ImageList_Destroy(himl);
        return FALSE;
    }


    (void)TreeView_SetImageList(hwndTV, himl, TVSIL_NORMAL);

    return TRUE;
}
