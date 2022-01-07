
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
struct stat {int st_nlink; scalar_t__ st_uid; scalar_t__ st_ino; scalar_t__ st_gid; scalar_t__ st_dev; scalar_t__ st_rdev; scalar_t__ st_size; int st_mode; void* st_mtime; void* st_ctime; void* st_atime; } ;
struct TYPE_5__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
struct TYPE_4__ {char* cFileName; scalar_t__ nFileSizeLow; int dwFileAttributes; TYPE_3__ ftCreationTime; TYPE_3__ ftLastAccessTime; TYPE_3__ ftLastWriteTime; scalar_t__ nFileSizeHigh; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef int SYSTEMTIME ;
typedef scalar_t__ HANDLE ;
typedef int FILETIME ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int FileTimeToLocalFileTime (TYPE_3__*,int *) ;
 int FileTimeToSystemTime (int *,int *) ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFile (int *,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 scalar_t__ TM_YEAR_BASE ;
 int __wceex_get_file_mode (char const*,int ) ;
 scalar_t__ _stricmp (char const*,char*) ;
 int mbstowcs (int *,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strpbrk (char const*,char*) ;
 void* wceex_local_to_time (int *) ;
 void* wceex_local_to_time_r (scalar_t__,int ,int,int ,int ,int ) ;

int wceex_stat(const char* filename, struct stat *buffer)
{
    HANDLE findhandle;
    WIN32_FIND_DATA findbuf;
    wchar_t pathWCE[MAX_PATH];


    if(strpbrk(filename, "?*"))

    {

        return(-1);
    }


    mbstowcs(pathWCE, filename, strlen(filename) + 1);
    findhandle = FindFirstFile(pathWCE, &findbuf);
    if(findhandle == INVALID_HANDLE_VALUE)
    {

        if(_stricmp(filename, ".\\")==0)
        {
            findbuf.dwFileAttributes = FILE_ATTRIBUTE_DIRECTORY;


            findbuf.nFileSizeHigh = 0;
            findbuf.nFileSizeLow = 0;
            findbuf.cFileName[0] = '\0';

            buffer->st_mtime = wceex_local_to_time_r(1980 - TM_YEAR_BASE, 0, 1, 0, 0, 0);
            buffer->st_atime = buffer->st_mtime;
            buffer->st_ctime = buffer->st_mtime;
        }


        else
        {

            return(-1);
        }
    }
    else
    {


        SYSTEMTIME SystemTime;
        FILETIME LocalFTime;


        if(!FileTimeToLocalFileTime( &findbuf.ftLastWriteTime, &LocalFTime) ||
            !FileTimeToSystemTime(&LocalFTime, &SystemTime))
        {

            FindClose( findhandle );
            return( -1 );
        }

        buffer->st_mtime = wceex_local_to_time(&SystemTime);


        if(findbuf.ftLastAccessTime.dwLowDateTime || findbuf.ftLastAccessTime.dwHighDateTime)
        {
            if(!FileTimeToLocalFileTime(&findbuf.ftLastAccessTime, &LocalFTime) ||
                !FileTimeToSystemTime(&LocalFTime, &SystemTime))
            {

                FindClose( findhandle );
                return( -1 );
            }
            buffer->st_atime = wceex_local_to_time(&SystemTime);
        }
        else
        {
            buffer->st_atime = buffer->st_mtime;
        }



        if(findbuf.ftCreationTime.dwLowDateTime || findbuf.ftCreationTime.dwHighDateTime)
        {
            if(!FileTimeToLocalFileTime(&findbuf.ftCreationTime, &LocalFTime) ||
                !FileTimeToSystemTime(&LocalFTime, &SystemTime))
            {

                FindClose( findhandle );
                return( -1 );
            }
            buffer->st_ctime = wceex_local_to_time(&SystemTime);
        }
        else
        {
            buffer->st_ctime = buffer->st_mtime;
        }


        FindClose(findhandle);
    }


    buffer->st_mode = __wceex_get_file_mode(filename, findbuf.dwFileAttributes);


    buffer->st_size = findbuf.nFileSizeLow;


    buffer->st_rdev = buffer->st_dev = 0;


    buffer->st_gid = 0;
    buffer->st_ino = 0;
    buffer->st_uid = 0;


    buffer->st_nlink = 1;


    return 0;
}
