#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  item ;
typedef  char WCHAR ;
struct TYPE_3__ {int cbSize; char* dwTypeData; int /*<<< orphan*/  fMask; } ;
typedef  TYPE_1__ MENUITEMINFOW ;
typedef  scalar_t__ LSTATUS ;
typedef  int /*<<< orphan*/ * HUSKEY ;
typedef  int /*<<< orphan*/  HMENU ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  MIIM_STRING ; 
 int /*<<< orphan*/  SHREGENUM_HKLM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(HMENU menu)
{
    static const WCHAR toolbar_key[] = {'S','o','f','t','w','a','r','e','\\',
                                        'M','i','c','r','o','s','o','f','t','\\',
                                        'I','n','t','e','r','n','e','t',' ',
                                        'E','x','p','l','o','r','e','r','\\',
                                        'T','o','o','l','b','a','r',0};
    HUSKEY toolbar_handle;

    if(FUNC6(toolbar_key, KEY_READ, NULL, &toolbar_handle, TRUE) == ERROR_SUCCESS)
    {
        static const WCHAR classes_key[] = {'S','o','f','t','w','a','r','e','\\',
                                            'C','l','a','s','s','e','s','\\','C','L','S','I','D',0};
        HUSKEY classes_handle;
        WCHAR guid[39];
        DWORD value_len = FUNC0(guid);
        int i;

        if(FUNC6(classes_key, KEY_READ, NULL, &classes_handle, TRUE) != ERROR_SUCCESS)
        {
            FUNC4(toolbar_handle);
            FUNC1("Failed to open key %s\n", FUNC9(classes_key));
            return;
        }

        for(i = 0; FUNC5(toolbar_handle, i, guid, &value_len, NULL, NULL, NULL, SHREGENUM_HKLM) == ERROR_SUCCESS; i++)
        {
            WCHAR tb_name[100];
            DWORD tb_name_len = FUNC0(tb_name);
            HUSKEY tb_class_handle;
            MENUITEMINFOW item;
            LSTATUS ret;
            value_len = FUNC0(guid);

            if(FUNC10(guid) != 38)
            {
                FUNC8("Found invalid IE toolbar entry: %s\n", FUNC9(guid));
                continue;
            }

            if(FUNC6(guid, KEY_READ, classes_handle, &tb_class_handle, TRUE) != ERROR_SUCCESS)
            {
                FUNC1("Failed to get class info for %s\n", FUNC9(guid));
                continue;
            }

            ret = FUNC7(tb_class_handle, NULL, NULL, tb_name, &tb_name_len, TRUE, NULL, 0);

            FUNC4(tb_class_handle);

            if(ret != ERROR_SUCCESS)
            {
                FUNC1("Failed to get toolbar name for %s\n", FUNC9(guid));
                continue;
            }

            item.cbSize = sizeof(item);
            item.fMask = MIIM_STRING;
            item.dwTypeData = tb_name;
            FUNC3(menu, FUNC2(menu), TRUE, &item);
        }

        FUNC4(classes_handle);
        FUNC4(toolbar_handle);
    }
}