
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TREEVIEW_INFO ;


 int TRACE_ON (int ) ;
 int TREEVIEW_VerifyRoot (int *) ;
 int assert (int ) ;
 int treeview ;

__attribute__((used)) static void
TREEVIEW_VerifyTree(TREEVIEW_INFO *infoPtr)
{
    if (!TRACE_ON(treeview)) return;

    assert(infoPtr != ((void*)0));
    TREEVIEW_VerifyRoot(infoPtr);
}
