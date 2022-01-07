
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int link_buf ;


 int MAXPGPATH ;
 int S_ISLNK (int ) ;
 int _ (char*) ;
 int canonicalize_path (char*) ;
 int chdir (char*) ;
 int errcode_for_file_access () ;
 scalar_t__ errno ;
 int getcwd (char*,int) ;
 int join_path_components (char*,char*,char*) ;
 char* last_dir_separator (char*) ;
 int log_error (int ,int ,...) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int readlink (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
resolve_symlinks(char *path)
{
 return 0;
}
