#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct _finddata_t {scalar_t__ attrib; int /*<<< orphan*/  name; int /*<<< orphan*/  size; void* time_write; void* time_access; void* time_create; } ;
struct TYPE_3__ {scalar_t__ dwFileAttributes; int /*<<< orphan*/  cFileName; int /*<<< orphan*/  nFileSizeLow; int /*<<< orphan*/  ftLastWriteTime; int /*<<< orphan*/  ftLastAccessTime; int /*<<< orphan*/  ftCreationTime; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
#define  ERROR_FILE_NOT_FOUND 131 
#define  ERROR_NOT_ENOUGH_MEMORY 130 
#define  ERROR_NO_MORE_FILES 129 
#define  ERROR_PATH_NOT_FOUND 128 
 scalar_t__ FILE_ATTRIBUTE_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

intptr_t FUNC7(const char *filespec, struct _finddata_t *fileinfo)
{
    WIN32_FIND_DATA wfd;
    HANDLE          hFile;
    DWORD           err;
    wchar_t         wfilename[MAX_PATH];
    
    FUNC2(wfilename, filespec, FUNC3(filespec) + 1);
    
    /* XXX - mloskot - set errno values! */
    
    hFile = FUNC0(wfilename, &wfd);
    if(hFile == INVALID_HANDLE_VALUE)
    {
        err = FUNC1();
        switch (err)
        {
        case ERROR_NO_MORE_FILES:
        case ERROR_FILE_NOT_FOUND:
        case ERROR_PATH_NOT_FOUND:
            //errno = ENOENT;
            break;
            
        case ERROR_NOT_ENOUGH_MEMORY:
            //errno = ENOMEM;
            break;
            
        default:
            //errno = EINVAL;
            break;
        }
        return (-1);
    }
    
    fileinfo->attrib = (wfd.dwFileAttributes == FILE_ATTRIBUTE_NORMAL) ? 0 : wfd.dwFileAttributes;
    fileinfo->time_create  = FUNC4(&wfd.ftCreationTime);
    fileinfo->time_access  = FUNC4(&wfd.ftLastAccessTime);
    fileinfo->time_write   = FUNC4(&wfd.ftLastWriteTime);
    
    fileinfo->size = wfd.nFileSizeLow;
    FUNC6(fileinfo->name, wfd.cFileName, FUNC5(wfd.cFileName) + 1);
    
    return (intptr_t)hFile;
}