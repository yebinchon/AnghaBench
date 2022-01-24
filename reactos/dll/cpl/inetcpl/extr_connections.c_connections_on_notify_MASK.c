#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  use_proxy ;
typedef  int /*<<< orphan*/  connection_settings ;
typedef  int /*<<< orphan*/  WPARAM ;
typedef  char WCHAR ;
struct TYPE_3__ {scalar_t__ code; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
typedef  TYPE_2__ PSHNOTIFY ;
typedef  scalar_t__ LRESULT ;
typedef  scalar_t__ LPARAM ;
typedef  int INT_PTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  IDC_EDIT_PAC_SCRIPT ; 
 int /*<<< orphan*/  IDC_EDIT_PROXY_PORT ; 
 int /*<<< orphan*/  IDC_EDIT_PROXY_SERVER ; 
 int /*<<< orphan*/  IDC_USE_PAC_SCRIPT ; 
 int /*<<< orphan*/  IDC_USE_PROXY_SERVER ; 
 int /*<<< orphan*/  IDC_USE_WPAD ; 
 int INTERNET_MAX_URL_LENGTH ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 scalar_t__ PSN_APPLY ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  auto_config_url ; 
 int /*<<< orphan*/  connections ; 
 int FUNC9 (int,char*,int,int,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  default_connection_settings ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  internet_settings ; 
 int /*<<< orphan*/  proxy_enable ; 
 int /*<<< orphan*/  proxy_server ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static INT_PTR FUNC12(HWND hwnd, WPARAM wparam, LPARAM lparam)
{
    connection_settings *default_connection;
    WCHAR proxy[INTERNET_MAX_URL_LENGTH];
    WCHAR pac_script[INTERNET_MAX_URL_LENGTH];
    PSHNOTIFY *psn = (PSHNOTIFY*)lparam;
    DWORD proxy_len, port_len, pac_script_len;
    DWORD use_proxy, use_pac_script, use_wpad, size;
    LRESULT res;
    HKEY hkey, con;

    if(psn->hdr.code != PSN_APPLY)
        return FALSE;

    res = FUNC6(HKEY_CURRENT_USER, internet_settings, &hkey);
    if(res)
        return FALSE;

    use_proxy = FUNC2(hwnd, IDC_USE_PROXY_SERVER);
    res = FUNC7(hkey, proxy_enable, 0, REG_DWORD,
            (BYTE*)&use_proxy, sizeof(use_proxy));
    if(res)
    {
        FUNC3(hkey);
        return FALSE;
    }
    FUNC8("ProxyEnable set to %x\n", use_proxy);

    proxy_len = FUNC1(hwnd, IDC_EDIT_PROXY_SERVER, proxy, FUNC0(proxy));
    if(proxy_len)
    {
        proxy[proxy_len++] = ':';
        port_len = FUNC1(hwnd, IDC_EDIT_PROXY_PORT, proxy+proxy_len,
                FUNC0(proxy)-proxy_len);
        if(!port_len)
        {
            proxy[proxy_len++] = '8';
            proxy[proxy_len++] = '0';
            proxy[proxy_len] = 0;
        }

        res = FUNC7(hkey, proxy_server, 0, REG_SZ,
                (BYTE*)proxy, (proxy_len+port_len)*sizeof(WCHAR));
    }
    else
    {
        res = FUNC5(hkey, proxy_server);
        if(res == ERROR_FILE_NOT_FOUND)
            res = ERROR_SUCCESS;
    }
    if(res)
    {
        FUNC3(hkey);
        return FALSE;
    }
    FUNC8("ProxtServer set to %s\n", FUNC11(proxy));

    use_pac_script = FUNC2(hwnd, IDC_USE_PAC_SCRIPT);
    pac_script_len = FUNC1(hwnd, IDC_EDIT_PAC_SCRIPT,
            pac_script, FUNC0(pac_script));
    if(!pac_script_len) use_pac_script = FALSE;
    if(use_pac_script)
    {
        res = FUNC7(hkey, auto_config_url, 0, REG_SZ,
                (BYTE*)pac_script, pac_script_len*sizeof(WCHAR));
    }
    else
    {
        res = FUNC5(hkey, auto_config_url);
        if(res == ERROR_FILE_NOT_FOUND)
            res = ERROR_SUCCESS;
    }
    if(res)
    {
        FUNC3(hkey);
        return FALSE;
    }
    FUNC8("AutoConfigURL set to %s\n", FUNC11(use_pac_script ? pac_script : NULL));

    use_wpad = FUNC2(hwnd, IDC_USE_WPAD);

    res = FUNC4(hkey, connections, 0, NULL, 0, KEY_WRITE, NULL, &con, NULL);
    FUNC3(hkey);
    if(res)
        return FALSE;

    size = FUNC9(use_proxy, proxy, use_wpad,
        use_pac_script, pac_script, &default_connection);
    if(!size)
    {
        FUNC3(con);
        return FALSE;
    }

    res = FUNC7(con, default_connection_settings, 0, REG_BINARY,
            (BYTE*)default_connection, size);
    FUNC10(default_connection);
    FUNC3(con);
    return !res;
}