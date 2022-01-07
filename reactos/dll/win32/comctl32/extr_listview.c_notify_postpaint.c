
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NMLVCUSTOMDRAW ;
typedef int LISTVIEW_INFO ;
typedef int DWORD ;


 int CDDS_POSTPAINT ;
 int notify_customdraw (int const*,int ,int *) ;

__attribute__((used)) static inline DWORD notify_postpaint (const LISTVIEW_INFO *infoPtr, NMLVCUSTOMDRAW *lpnmlvcd)
{
    return notify_customdraw(infoPtr, CDDS_POSTPAINT, lpnmlvcd);
}
