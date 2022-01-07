
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct _finddata_t {scalar_t__ attrib; int name; int size; void* time_write; void* time_access; void* time_create; } ;
struct TYPE_3__ {scalar_t__ dwFileAttributes; int cFileName; int nFileSizeLow; int ftLastWriteTime; int ftLastAccessTime; int ftCreationTime; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;






 scalar_t__ FILE_ATTRIBUTE_NORMAL ;
 scalar_t__ FindFirstFile (int *,TYPE_1__*) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int mbstowcs (int *,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 void* wceex_filetime_to_time (int *) ;
 scalar_t__ wcslen (int ) ;
 int wcstombs (int ,int ,scalar_t__) ;

intptr_t wceex_findfirst(const char *filespec, struct _finddata_t *fileinfo)
{
    WIN32_FIND_DATA wfd;
    HANDLE hFile;
    DWORD err;
    wchar_t wfilename[MAX_PATH];

    mbstowcs(wfilename, filespec, strlen(filespec) + 1);



    hFile = FindFirstFile(wfilename, &wfd);
    if(hFile == INVALID_HANDLE_VALUE)
    {
        err = GetLastError();
        switch (err)
        {
        case 129:
        case 131:
        case 128:

            break;

        case 130:

            break;

        default:

            break;
        }
        return (-1);
    }

    fileinfo->attrib = (wfd.dwFileAttributes == FILE_ATTRIBUTE_NORMAL) ? 0 : wfd.dwFileAttributes;
    fileinfo->time_create = wceex_filetime_to_time(&wfd.ftCreationTime);
    fileinfo->time_access = wceex_filetime_to_time(&wfd.ftLastAccessTime);
    fileinfo->time_write = wceex_filetime_to_time(&wfd.ftLastWriteTime);

    fileinfo->size = wfd.nFileSizeLow;
    wcstombs(fileinfo->name, wfd.cFileName, wcslen(wfd.cFileName) + 1);

    return (intptr_t)hFile;
}
