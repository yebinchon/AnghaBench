
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _finddata_t {scalar_t__ attrib; int name; int size; void* time_write; void* time_access; void* time_create; } ;
struct TYPE_3__ {scalar_t__ dwFileAttributes; int cFileName; int nFileSizeLow; int ftLastWriteTime; int ftLastAccessTime; int ftCreationTime; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int HANDLE ;
typedef int DWORD ;






 scalar_t__ FILE_ATTRIBUTE_NORMAL ;
 int FindNextFile (int ,TYPE_1__*) ;
 int GetLastError () ;
 void* wceex_filetime_to_time (int *) ;
 scalar_t__ wcslen (int ) ;
 int wcstombs (int ,int ,scalar_t__) ;

int wceex_findnext(intptr_t handle, struct _finddata_t *fileinfo)
{
    WIN32_FIND_DATA wfd;
    DWORD err;



    if (!FindNextFile((HANDLE)handle, &wfd))
    {
        err = GetLastError();
        switch (err) {
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

    fileinfo->attrib = (wfd.dwFileAttributes == FILE_ATTRIBUTE_NORMAL)? 0 : wfd.dwFileAttributes;
    fileinfo->time_create = wceex_filetime_to_time(&wfd.ftCreationTime);
    fileinfo->time_access = wceex_filetime_to_time(&wfd.ftLastAccessTime);
    fileinfo->time_write = wceex_filetime_to_time(&wfd.ftLastWriteTime);

    fileinfo->size = wfd.nFileSizeLow;
    wcstombs(fileinfo->name, wfd.cFileName, wcslen(wfd.cFileName)+1);

    return 0;
}
