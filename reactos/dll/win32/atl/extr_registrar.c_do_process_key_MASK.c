#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* str; int len; } ;
typedef  TYPE_1__ strbuf ;
typedef  int /*<<< orphan*/  dw ;
typedef  char WCHAR ;
typedef  char* PBYTE ;
typedef  char* LPCOLESTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HKEY ;
typedef  int DWORD ;
typedef  char BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_EXCEPTION ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 scalar_t__ FUNC9 (scalar_t__,char*,scalar_t__*) ; 
 scalar_t__ FUNC10 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char**,TYPE_1__*) ; 
 scalar_t__ FUNC16 (char) ; 
 int /*<<< orphan*/  FUNC17 (char) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (char*,TYPE_1__*,int) ; 
 int FUNC22 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC24(LPCOLESTR *pstr, HKEY parent_key, strbuf *buf, BOOL do_register)
{
    LPCOLESTR iter;
    HRESULT hres;
    LONG lres;
    HKEY hkey = 0;
    strbuf name;

    enum {
        NORMAL,
        NO_REMOVE,
        IS_VAL,
        FORCE_REMOVE,
        DO_DELETE
    } key_type = NORMAL;

    static const WCHAR wstrNoRemove[] = {'N','o','R','e','m','o','v','e',0};
    static const WCHAR wstrForceRemove[] = {'F','o','r','c','e','R','e','m','o','v','e',0};
    static const WCHAR wstrDelete[] = {'D','e','l','e','t','e',0};
    static const WCHAR wstrval[] = {'v','a','l',0};

    iter = *pstr;
    hres = FUNC15(&iter, buf);
    if(FUNC0(hres))
        return hres;
    FUNC20(&name);

    while(buf->str[1] || buf->str[0] != '}') {
        key_type = NORMAL;
        if(!FUNC18(buf->str, wstrNoRemove))
            key_type = NO_REMOVE;
        else if(!FUNC18(buf->str, wstrForceRemove))
            key_type = FORCE_REMOVE;
        else if(!FUNC18(buf->str, wstrval))
            key_type = IS_VAL;
        else if(!FUNC18(buf->str, wstrDelete))
            key_type = DO_DELETE;

        if(key_type != NORMAL) {
            hres = FUNC15(&iter, buf);
            if(FUNC0(hres))
                break;
        }
        FUNC12("name = %s\n", FUNC14(buf->str));

        if(do_register) {
            if(key_type == IS_VAL) {
                hkey = parent_key;
                FUNC21(buf->str, &name, -1);
            }else if(key_type == DO_DELETE) {
                FUNC12("Deleting %s\n", FUNC14(buf->str));
                FUNC8(parent_key, buf->str);
            }else {
                if(key_type == FORCE_REMOVE)
                    FUNC8(parent_key, buf->str);
                lres = FUNC6(parent_key, buf->str, &hkey);
                if(lres != ERROR_SUCCESS) {
                    FUNC13("Could not create(open) key: %08x\n", lres);
                    hres = FUNC2(lres);
                    break;
                }
            }
        }else if(key_type != IS_VAL && key_type != DO_DELETE) {
            FUNC21(buf->str, &name, -1);
            lres = FUNC9(parent_key, buf->str, &hkey);
              if(lres != ERROR_SUCCESS)
                FUNC13("Could not open key %s: %08x\n", FUNC14(name.str), lres);
        }

        if(key_type != DO_DELETE && *iter == '=') {
            iter++;
            hres = FUNC15(&iter, buf);
            if(FUNC0(hres))
                break;
            if(buf->len != 1) {
                FUNC13("Wrong registry type: %s\n", FUNC14(buf->str));
                hres = DISP_E_EXCEPTION;
                break;
            }
            if(do_register) {
                switch(buf->str[0]) {
                case 's':
                    hres = FUNC15(&iter, buf);
                    if(FUNC0(hres))
                        break;
                    lres = FUNC10(hkey, name.len ? name.str :  NULL, 0, REG_SZ, (PBYTE)buf->str,
                            (FUNC19(buf->str)+1)*sizeof(WCHAR));
                    if(lres != ERROR_SUCCESS) {
                        FUNC13("Could set value of key: %08x\n", lres);
                        hres = FUNC2(lres);
                        break;
                    }
                    break;
                case 'd': {
                    DWORD dw;
                    hres = FUNC15(&iter, buf);
                    if(FUNC0(hres))
                        break;
                    dw = FUNC22(buf->str, NULL, 10);
                    lres = FUNC10(hkey, name.len ? name.str :  NULL, 0, REG_DWORD,
                            (PBYTE)&dw, sizeof(dw));
                    if(lres != ERROR_SUCCESS) {
                        FUNC13("Could set value of key: %08x\n", lres);
                        hres = FUNC2(lres);
                        break;
                    }
                    break;
                }
                case 'b': {
                    BYTE *bytes;
                    DWORD count;
                    DWORD i;
                    hres = FUNC15(&iter, buf);
                    if(FUNC0(hres))
                        break;
                    count = (FUNC19(buf->str) + 1) / 2;
                    bytes = FUNC3(FUNC1(), 0, count);
                    if(bytes == NULL) {
                        hres = E_OUTOFMEMORY;
                        break;
                    }
                    for(i = 0; i < count && buf->str[2*i]; i++) {
                        WCHAR digits[3];
                        if(!FUNC17(buf->str[2*i]) || !FUNC17(buf->str[2*i + 1])) {
                            hres = E_FAIL;
                            break;
                        }
                        digits[0] = buf->str[2*i];
                        digits[1] = buf->str[2*i + 1];
                        digits[2] = 0;
                        bytes[i] = (BYTE) FUNC23(digits, NULL, 16);
                    }
                    if(FUNC11(hres)) {
                        lres = FUNC10(hkey, name.len ? name.str :  NULL, 0, REG_BINARY,
                            bytes, count);
                        if(lres != ERROR_SUCCESS) {
                            FUNC13("Could not set value of key: 0x%08x\n", lres);
                            hres = FUNC2(lres);
                        }
                    }
                    FUNC4(FUNC1(), 0, bytes);
                    break;
                }
                default:
                    FUNC13("Wrong resource type: %s\n", FUNC14(buf->str));
                    hres = DISP_E_EXCEPTION;
                };
                if(FUNC0(hres))
                    break;
            }else {
                if(*iter == '-')
                    iter++;
                hres = FUNC15(&iter, buf);
                if(FUNC0(hres))
                    break;
            }
        }else if(key_type == IS_VAL) {
            FUNC13("value not set!\n");
            hres = DISP_E_EXCEPTION;
            break;
        }

        if(key_type != IS_VAL && key_type != DO_DELETE && *iter == '{' && FUNC16(iter[1])) {
            hres = FUNC15(&iter, buf);
            if(FUNC0(hres))
                break;
            hres = FUNC24(&iter, hkey, buf, do_register);
            if(FUNC0(hres))
                break;
        }

        FUNC12("%x %x\n", do_register, key_type);
        if(!do_register && (key_type == NORMAL || key_type == FORCE_REMOVE)) {
            FUNC12("Deleting %s\n", FUNC14(name.str));
            FUNC7(parent_key, name.str);
        }

        if(hkey && key_type != IS_VAL)
            FUNC5(hkey);
        hkey = 0;
        name.len = 0;

        hres = FUNC15(&iter, buf);
        if(FUNC0(hres))
            break;
    }

    FUNC4(FUNC1(), 0, name.str);
    if(hkey && key_type != IS_VAL)
        FUNC5(hkey);
    *pstr = iter;
    return hres;
}