
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int MKDIR_ERROR ;
 int MKDIR_EXISTS ;
 int MKDIR_SUCCESS ;
 scalar_t__ errno ;
 scalar_t__ mkdir (char const*,int) ;

int os_mkdir(const char *path)
{
 if (mkdir(path, 0755) == 0)
  return MKDIR_SUCCESS;

 return (errno == EEXIST) ? MKDIR_EXISTS : MKDIR_ERROR;
}
