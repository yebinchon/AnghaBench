
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OpenTransientFilePerm (char const*,int,int ) ;
 int pg_file_create_mode ;

int
OpenTransientFile(const char *fileName, int fileFlags)
{
 return OpenTransientFilePerm(fileName, fileFlags, pg_file_create_mode);
}
