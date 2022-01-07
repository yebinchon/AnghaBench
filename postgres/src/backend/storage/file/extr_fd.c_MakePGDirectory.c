
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mkdir (char const*,int ) ;
 int pg_dir_create_mode ;

int
MakePGDirectory(const char *directoryName)
{
 return mkdir(directoryName, pg_dir_create_mode);
}
