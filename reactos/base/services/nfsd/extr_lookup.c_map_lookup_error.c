
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;


 int ERROR_FILESYSTEM_ABSENT ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_PATH_NOT_FOUND ;
 int ERROR_REPARSE ;



 int nfs_to_windows_error (int,int) ;

__attribute__((used)) static int map_lookup_error(int status, bool_t last_component)
{
    switch (status) {
    case 129:
        if (last_component) return ERROR_FILE_NOT_FOUND;
        else return ERROR_PATH_NOT_FOUND;
    case 128: return ERROR_REPARSE;
    case 130: return ERROR_FILESYSTEM_ABSENT;
    default: return nfs_to_windows_error(status, ERROR_FILE_NOT_FOUND);
    }
}
