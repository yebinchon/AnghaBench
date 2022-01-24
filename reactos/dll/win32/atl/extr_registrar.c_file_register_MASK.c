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
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  LPCOLESTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ FUNC9 (scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC13(Registrar *This, LPCOLESTR fileName, BOOL do_register)
{
    HANDLE file;
    DWORD filelen, len;
    LPWSTR regstrw;
    LPSTR regstra;
    HRESULT hres;

    file = FUNC1(fileName, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL);
    if(file != INVALID_HANDLE_VALUE) {
        filelen = FUNC2(file, NULL);
        regstra = FUNC6(FUNC4(), 0, filelen);
        if(FUNC9(file, regstra, filelen, NULL, NULL)) {
            len = FUNC8(CP_ACP, 0, regstra, filelen, NULL, 0)+1;
            regstrw = FUNC6(FUNC4(), HEAP_ZERO_MEMORY, len*sizeof(WCHAR));
            FUNC8(CP_ACP, 0, regstra, filelen, regstrw, len);
            regstrw[len-1] = '\0';

            hres = FUNC12(This, regstrw, do_register);

            FUNC7(FUNC4(), 0, regstrw);
        }else {
            FUNC10("Failed to read file %s\n", FUNC11(fileName));
            hres = FUNC5(FUNC3());
        }
        FUNC7(FUNC4(), 0, regstra);
        FUNC0(file);
    }else {
        FUNC10("Could not open file %s\n", FUNC11(fileName));
        hres = FUNC5(FUNC3());
    }

    return hres;
}