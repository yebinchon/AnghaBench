
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TREEVIEW_INFO ;
typedef int NMHDR ;
typedef int BOOL ;


 int TREEVIEW_SendRealNotify (int const*,int ,int *) ;

__attribute__((used)) static BOOL
TREEVIEW_SendSimpleNotify(const TREEVIEW_INFO *infoPtr, UINT code)
{
    NMHDR hdr;
    return TREEVIEW_SendRealNotify(infoPtr, code, &hdr);
}
