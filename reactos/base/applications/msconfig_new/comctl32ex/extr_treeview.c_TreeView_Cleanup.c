
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int ImageList_Destroy (int ) ;
 int TVSIL_STATE ;
 int TreeView_GetImageList (int ,int ) ;

void TreeView_Cleanup(HWND hTree)
{

    ImageList_Destroy(TreeView_GetImageList(hTree, TVSIL_STATE));
}
