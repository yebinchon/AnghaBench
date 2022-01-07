
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HDROP ;


 int ARRAYSIZE (int *) ;
 int DragFinish (int ) ;
 int DragQueryFileW (int ,int ,int *,int ) ;
 int LoadClipboardDataFromFile (int *) ;
 int MAX_PATH ;

__attribute__((used)) static void LoadClipboardFromDrop(HDROP hDrop)
{
    WCHAR szFileName[MAX_PATH];

    DragQueryFileW(hDrop, 0, szFileName, ARRAYSIZE(szFileName));
    DragFinish(hDrop);

    LoadClipboardDataFromFile(szFileName);
}
