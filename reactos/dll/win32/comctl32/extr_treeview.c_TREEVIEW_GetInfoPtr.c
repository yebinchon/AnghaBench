
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TREEVIEW_INFO ;
typedef int HWND ;


 scalar_t__ GetWindowLongPtrW (int ,int ) ;

__attribute__((used)) static inline TREEVIEW_INFO *
TREEVIEW_GetInfoPtr(HWND hwnd)
{
    return (TREEVIEW_INFO *)GetWindowLongPtrW(hwnd, 0);
}
