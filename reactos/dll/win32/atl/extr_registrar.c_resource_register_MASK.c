#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  Registrar ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPCOLESTR ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HINSTANCE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LOAD_LIBRARY_AS_DATAFILE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC13(Registrar *This, LPCOLESTR resFileName,
                        LPCOLESTR szID, LPCOLESTR szType, BOOL do_register)
{
    HINSTANCE hins;
    HRSRC src;
    LPSTR regstra;
    LPWSTR regstrw;
    DWORD len, reslen;
    HRESULT hres;

    hins = FUNC7(resFileName, NULL, LOAD_LIBRARY_AS_DATAFILE);
    if(hins) {
        src = FUNC0(hins, szID, szType);
        if(src) {
            regstra = FUNC8(hins, src);
            reslen = FUNC10(hins, src);
            if(regstra) {
                len = FUNC9(CP_ACP, 0, regstra, reslen, NULL, 0)+1;
                regstrw = FUNC5(FUNC3(), HEAP_ZERO_MEMORY, len*sizeof(WCHAR));
                FUNC9(CP_ACP, 0, regstra, reslen, regstrw, len);
                regstrw[len-1] = '\0';

                hres = FUNC12(This, regstrw, do_register);

                FUNC6(FUNC3(), 0, regstrw);
            }else {
                FUNC11("could not load resource\n");
                hres = FUNC4(FUNC2());
            }
        }else {
            FUNC11("Could not find source\n");
            hres = FUNC4(FUNC2());
        }
        FUNC1(hins);
    }else {
        FUNC11("Could not load resource file\n");
        hres = FUNC4(FUNC2());
    }

    return hres;
}