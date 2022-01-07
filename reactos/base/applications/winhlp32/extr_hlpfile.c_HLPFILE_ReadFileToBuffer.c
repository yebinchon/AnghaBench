
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file_buffer_size; char* file_buffer; } ;
typedef TYPE_1__ HLPFILE ;
typedef int HFILE ;
typedef char BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GET_UINT (char*,int) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int TRUE ;
 int WINE_WARN (char*) ;
 int _hread (int ,char*,int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static BOOL HLPFILE_ReadFileToBuffer(HLPFILE* hlpfile, HFILE hFile)
{
    BYTE header[16], dummy[1];

    if (_hread(hFile, header, 16) != 16) {WINE_WARN("header\n"); return FALSE;};


    if (GET_UINT(header, 0) != 0x00035F3F)
    {WINE_WARN("wrong header\n"); return FALSE;};

    hlpfile->file_buffer_size = GET_UINT(header, 12);
    hlpfile->file_buffer = HeapAlloc(GetProcessHeap(), 0, hlpfile->file_buffer_size + 1);
    if (!hlpfile->file_buffer) return FALSE;

    memcpy(hlpfile->file_buffer, header, 16);
    if (_hread(hFile, hlpfile->file_buffer + 16, hlpfile->file_buffer_size - 16) !=hlpfile->file_buffer_size - 16)
    {WINE_WARN("filesize1\n"); return FALSE;};

    if (_hread(hFile, dummy, 1) != 0) WINE_WARN("filesize2\n");

    hlpfile->file_buffer[hlpfile->file_buffer_size] = '\0';

    return TRUE;
}
