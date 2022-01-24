#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* str; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ strbuf ;
struct TYPE_8__ {int /*<<< orphan*/  key; int /*<<< orphan*/  name; } ;
typedef  scalar_t__* LPCOLESTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  DISP_E_EXCEPTION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__**,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* root_keys ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC10(LPCOLESTR data, BOOL do_register)
{
    LPCOLESTR iter = data;
    strbuf buf;
    HRESULT hres;
    unsigned int i;

    FUNC9(&buf);
    hres = FUNC7(&iter, &buf);
    if(FUNC1(hres))
        return hres;

    while(*iter) {
        if(!buf.len) {
            FUNC4("ward.len == 0, failed\n");
            hres = DISP_E_EXCEPTION;
            break;
        }
        for(i=0; i<FUNC0(root_keys); i++) {
            if(!FUNC8(buf.str, root_keys[i].name))
                break;
        }
        if(i == FUNC0(root_keys)) {
            FUNC4("Wrong root key name: %s\n", FUNC5(buf.str));
            hres = DISP_E_EXCEPTION;
            break;
        }
        hres = FUNC7(&iter, &buf);
        if(FUNC1(hres))
            break;
        if(buf.str[1] || buf.str[0] != '{') {
            FUNC4("Failed, expected '{', got %s\n", FUNC5(buf.str));
            hres = DISP_E_EXCEPTION;
            break;
        }
        hres = FUNC6(&iter, root_keys[i].key, &buf, do_register);
        if(FUNC1(hres)) {
            FUNC4("Processing key failed: %08x\n", hres);
            break;
        }
        hres = FUNC7(&iter, &buf);
        if(FUNC1(hres))
            break;
    }
    FUNC3(FUNC2(), 0, buf.str);
    return hres;
}