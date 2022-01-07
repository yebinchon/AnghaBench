
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VOID ;
typedef int HRSRC ;
typedef int HMODULE ;
typedef int * HGLOBAL ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 int ERR (char*) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FindResourceW (int ,int ,int ) ;
 int FreeResource (int *) ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int * LoadResource (int ,int ) ;
 int * LockResource (int *) ;
 int REGINST ;
 scalar_t__ SizeofResource (int ,int ) ;
 int TRUE ;
 int WriteFile (scalar_t__,int *,scalar_t__,scalar_t__*,int *) ;
 int get_temp_ini_path (int *) ;

__attribute__((used)) static BOOL create_tmp_ini_file(HMODULE hm, WCHAR *ini_file)
{
    HRSRC hrsrc;
    HGLOBAL hmem = ((void*)0);
    DWORD rsrc_size, bytes_written;
    VOID *rsrc_data;
    HANDLE hf = INVALID_HANDLE_VALUE;

    if(!get_temp_ini_path(ini_file)) {
        ERR("Can't get temp ini file path\n");
        goto error;
    }

    if(!(hrsrc = FindResourceW(hm, REGINST, REGINST))) {
        ERR("Can't find REGINST resource\n");
        goto error;
    }

    rsrc_size = SizeofResource(hm, hrsrc);
    hmem = LoadResource(hm, hrsrc);
    rsrc_data = LockResource(hmem);

    if(!rsrc_data || !rsrc_size) {
        ERR("Can't load REGINST resource\n");
        goto error;
    }

    if((hf = CreateFileW(ini_file, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
                         FILE_ATTRIBUTE_NORMAL, ((void*)0))) == INVALID_HANDLE_VALUE) {
        ERR("Unable to create temp ini file\n");
        goto error;
    }
    if(!WriteFile(hf, rsrc_data, rsrc_size, &bytes_written, ((void*)0)) || rsrc_size != bytes_written) {
        ERR("Write failed\n");
        goto error;
    }
    FreeResource(hmem);
    CloseHandle(hf);
    return TRUE;
error:
    if(hmem) FreeResource(hmem);
    if(hf != INVALID_HANDLE_VALUE) CloseHandle(hf);
    return FALSE;
}
