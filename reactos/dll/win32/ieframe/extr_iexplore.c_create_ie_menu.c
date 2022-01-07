
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int HMENU ;


 int CSIDL_COMMON_FAVORITES ;
 int CSIDL_FAVORITES ;
 int IDR_BROWSE_MAIN_MENU ;
 int LoadMenuW (int ,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int MAX_PATH ;
 int SHGFP_TYPE_CURRENT ;
 scalar_t__ SHGetFolderPathW (int *,int ,int *,int ,int *) ;
 scalar_t__ S_OK ;
 int add_favs_to_menu (int ,int ,int *) ;
 int add_tbs_to_menu (int ) ;
 int get_fav_menu (int ) ;
 int get_tb_menu (int ) ;
 int ieframe_instance ;

__attribute__((used)) static HMENU create_ie_menu(void)
{
    HMENU menu = LoadMenuW(ieframe_instance, MAKEINTRESOURCEW(IDR_BROWSE_MAIN_MENU));
    HMENU favmenu = get_fav_menu(menu);
    WCHAR path[MAX_PATH];

    add_tbs_to_menu(get_tb_menu(menu));

    if(SHGetFolderPathW(((void*)0), CSIDL_COMMON_FAVORITES, ((void*)0), SHGFP_TYPE_CURRENT, path) == S_OK)
        add_favs_to_menu(favmenu, favmenu, path);

    if(SHGetFolderPathW(((void*)0), CSIDL_FAVORITES, ((void*)0), SHGFP_TYPE_CURRENT, path) == S_OK)
        add_favs_to_menu(favmenu, favmenu, path);

    return menu;
}
