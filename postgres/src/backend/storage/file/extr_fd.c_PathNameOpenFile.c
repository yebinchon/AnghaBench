
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int File ;


 int PathNameOpenFilePerm (char const*,int,int ) ;
 int pg_file_create_mode ;

File
PathNameOpenFile(const char *fileName, int fileFlags)
{
 return PathNameOpenFilePerm(fileName, fileFlags, pg_file_create_mode);
}
