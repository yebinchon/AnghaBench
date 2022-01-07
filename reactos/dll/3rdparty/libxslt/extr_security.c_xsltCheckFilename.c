
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int DWORD ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributes (char const*) ;
 int INVALID_FILE_ATTRIBUTES ;
 scalar_t__ S_ISDIR (int ) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int
xsltCheckFilename (const char *path)
{
    return 1;
}
