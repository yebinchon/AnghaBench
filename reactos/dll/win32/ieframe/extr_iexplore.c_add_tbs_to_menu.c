
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int item ;
typedef char WCHAR ;
struct TYPE_3__ {int cbSize; char* dwTypeData; int fMask; } ;
typedef TYPE_1__ MENUITEMINFOW ;
typedef scalar_t__ LSTATUS ;
typedef int * HUSKEY ;
typedef int HMENU ;
typedef int DWORD ;


 int ARRAY_SIZE (char*) ;
 int ERR (char*,int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int GetMenuItemCount (int ) ;
 int InsertMenuItemW (int ,int ,int ,TYPE_1__*) ;
 int KEY_READ ;
 int MIIM_STRING ;
 int SHREGENUM_HKLM ;
 int SHRegCloseUSKey (int *) ;
 scalar_t__ SHRegEnumUSValueW (int *,int,char*,int *,int *,int *,int *,int ) ;
 scalar_t__ SHRegOpenUSKeyW (char const*,int ,int *,int **,int ) ;
 scalar_t__ SHRegQueryUSValueW (int *,int *,int *,char*,int *,int ,int *,int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (char const*) ;
 int lstrlenW (char*) ;

__attribute__((used)) static void add_tbs_to_menu(HMENU menu)
{
    static const WCHAR toolbar_key[] = {'S','o','f','t','w','a','r','e','\\',
                                        'M','i','c','r','o','s','o','f','t','\\',
                                        'I','n','t','e','r','n','e','t',' ',
                                        'E','x','p','l','o','r','e','r','\\',
                                        'T','o','o','l','b','a','r',0};
    HUSKEY toolbar_handle;

    if(SHRegOpenUSKeyW(toolbar_key, KEY_READ, ((void*)0), &toolbar_handle, TRUE) == ERROR_SUCCESS)
    {
        static const WCHAR classes_key[] = {'S','o','f','t','w','a','r','e','\\',
                                            'C','l','a','s','s','e','s','\\','C','L','S','I','D',0};
        HUSKEY classes_handle;
        WCHAR guid[39];
        DWORD value_len = ARRAY_SIZE(guid);
        int i;

        if(SHRegOpenUSKeyW(classes_key, KEY_READ, ((void*)0), &classes_handle, TRUE) != ERROR_SUCCESS)
        {
            SHRegCloseUSKey(toolbar_handle);
            ERR("Failed to open key %s\n", debugstr_w(classes_key));
            return;
        }

        for(i = 0; SHRegEnumUSValueW(toolbar_handle, i, guid, &value_len, ((void*)0), ((void*)0), ((void*)0), SHREGENUM_HKLM) == ERROR_SUCCESS; i++)
        {
            WCHAR tb_name[100];
            DWORD tb_name_len = ARRAY_SIZE(tb_name);
            HUSKEY tb_class_handle;
            MENUITEMINFOW item;
            LSTATUS ret;
            value_len = ARRAY_SIZE(guid);

            if(lstrlenW(guid) != 38)
            {
                TRACE("Found invalid IE toolbar entry: %s\n", debugstr_w(guid));
                continue;
            }

            if(SHRegOpenUSKeyW(guid, KEY_READ, classes_handle, &tb_class_handle, TRUE) != ERROR_SUCCESS)
            {
                ERR("Failed to get class info for %s\n", debugstr_w(guid));
                continue;
            }

            ret = SHRegQueryUSValueW(tb_class_handle, ((void*)0), ((void*)0), tb_name, &tb_name_len, TRUE, ((void*)0), 0);

            SHRegCloseUSKey(tb_class_handle);

            if(ret != ERROR_SUCCESS)
            {
                ERR("Failed to get toolbar name for %s\n", debugstr_w(guid));
                continue;
            }

            item.cbSize = sizeof(item);
            item.fMask = MIIM_STRING;
            item.dwTypeData = tb_name;
            InsertMenuItemW(menu, GetMenuItemCount(menu), TRUE, &item);
        }

        SHRegCloseUSKey(classes_handle);
        SHRegCloseUSKey(toolbar_handle);
    }
}
