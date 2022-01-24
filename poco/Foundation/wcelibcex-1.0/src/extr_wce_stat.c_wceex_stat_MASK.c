#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct stat {int st_nlink; scalar_t__ st_uid; scalar_t__ st_ino; scalar_t__ st_gid; scalar_t__ st_dev; scalar_t__ st_rdev; scalar_t__ st_size; int /*<<< orphan*/  st_mode; void* st_mtime; void* st_ctime; void* st_atime; } ;
struct TYPE_5__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
struct TYPE_4__ {char* cFileName; scalar_t__ nFileSizeLow; int /*<<< orphan*/  dwFileAttributes; TYPE_3__ ftCreationTime; TYPE_3__ ftLastAccessTime; TYPE_3__ ftLastWriteTime; scalar_t__ nFileSizeHigh; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 scalar_t__ TM_YEAR_BASE ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 void* FUNC10 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(const char* filename, struct stat *buffer)
{
    HANDLE findhandle;
    WIN32_FIND_DATA findbuf;
    wchar_t pathWCE[MAX_PATH];

    //Don't allow wildcards to be interpreted by system
    if(FUNC8(filename, "?*"))
        //if(wcspbrk(path, L"?*"))
    {
        //errno = ENOENT;
        return(-1);
    }

    //search file/dir
    FUNC6(pathWCE, filename, FUNC7(filename) + 1);
    findhandle = FUNC3(pathWCE, &findbuf);
    if(findhandle == INVALID_HANDLE_VALUE)
    {
        //is root
        if(FUNC5(filename, ".\\")==0)
        {
            findbuf.dwFileAttributes = FILE_ATTRIBUTE_DIRECTORY;

            //dummy values
            findbuf.nFileSizeHigh = 0;
            findbuf.nFileSizeLow = 0;
            findbuf.cFileName[0] = '\0';

            buffer->st_mtime = FUNC10(1980 - TM_YEAR_BASE, 0, 1, 0, 0, 0);
            buffer->st_atime = buffer->st_mtime;
            buffer->st_ctime = buffer->st_mtime;
        }

        //treat as an error
        else
        {
            //errno = ENOENT;
            return(-1);
        }
    }
    else
    {
        /* File is found*/

        SYSTEMTIME SystemTime;
        FILETIME LocalFTime;

        //Time of last modification
        if(!FUNC0( &findbuf.ftLastWriteTime, &LocalFTime) ||
            !FUNC1(&LocalFTime, &SystemTime))
        {
            //errno = ::GetLastError();
            FUNC2( findhandle );
            return( -1 );
        }

        buffer->st_mtime = FUNC9(&SystemTime);

        //Time od last access of file
        if(findbuf.ftLastAccessTime.dwLowDateTime || findbuf.ftLastAccessTime.dwHighDateTime)
        {
            if(!FUNC0(&findbuf.ftLastAccessTime, &LocalFTime) ||
                !FUNC1(&LocalFTime, &SystemTime))
            {
                //errno = ::GetLastError();
                FUNC2( findhandle );
                return( -1 );
            }
            buffer->st_atime = FUNC9(&SystemTime);
        }
        else
        {
            buffer->st_atime = buffer->st_mtime;
        }


        //Time of creation of file
        if(findbuf.ftCreationTime.dwLowDateTime || findbuf.ftCreationTime.dwHighDateTime)
        {
            if(!FUNC0(&findbuf.ftCreationTime, &LocalFTime) ||
                !FUNC1(&LocalFTime, &SystemTime))
            {
                //errno = ::GetLastError();
                FUNC2( findhandle );
                return( -1 );
            }
            buffer->st_ctime = FUNC9(&SystemTime);
        }
        else
        {
            buffer->st_ctime = buffer->st_mtime;
        }

        //close handle
        FUNC2(findhandle);
    }

    //file mode
    buffer->st_mode = FUNC4(filename, findbuf.dwFileAttributes);

    //file size
    buffer->st_size = findbuf.nFileSizeLow;

    //drive letter 0
    buffer->st_rdev = buffer->st_dev = 0;

    //set the common fields
    buffer->st_gid = 0;
    buffer->st_ino = 0;
    buffer->st_uid = 0;

    //1 dla nlink
    buffer->st_nlink = 1;


    return 0;
}