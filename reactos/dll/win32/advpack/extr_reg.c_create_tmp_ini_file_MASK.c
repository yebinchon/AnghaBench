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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  HRSRC ;
typedef  int /*<<< orphan*/  HMODULE ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REGINST ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC10(HMODULE hm, WCHAR *ini_file)
{
    HRSRC hrsrc;
    HGLOBAL hmem = NULL;
    DWORD rsrc_size, bytes_written;
    VOID *rsrc_data;
    HANDLE hf = INVALID_HANDLE_VALUE;

    if(!FUNC9(ini_file)) {
        FUNC2("Can't get temp ini file path\n");
        goto error;
    }

    if(!(hrsrc = FUNC3(hm, REGINST, REGINST))) {
        FUNC2("Can't find REGINST resource\n");
        goto error;
    }

    rsrc_size = FUNC7(hm, hrsrc);
    hmem = FUNC5(hm, hrsrc);
    rsrc_data = FUNC6(hmem);

    if(!rsrc_data || !rsrc_size) {
        FUNC2("Can't load REGINST resource\n");
        goto error;
    }       

    if((hf = FUNC1(ini_file, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS,
                         FILE_ATTRIBUTE_NORMAL, NULL)) == INVALID_HANDLE_VALUE) {
        FUNC2("Unable to create temp ini file\n");
        goto error;
    }
    if(!FUNC8(hf, rsrc_data, rsrc_size, &bytes_written, NULL) || rsrc_size != bytes_written) {
        FUNC2("Write failed\n");
        goto error;
    }
    FUNC4(hmem);
    FUNC0(hf);
    return TRUE;
error:
    if(hmem) FUNC4(hmem);
    if(hf != INVALID_HANDLE_VALUE) FUNC0(hf);
    return FALSE;
}