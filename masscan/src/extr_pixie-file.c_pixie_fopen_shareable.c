
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int FILE ;


 int CREATE_ALWAYS ;
 scalar_t__ CreateFileA (char const*,int,int,int *,int ,int ,int *) ;
 int FILE_APPEND_DATA ;
 int FILE_ATTRIBUTE_TEMPORARY ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int _O_CREAT ;
 int _O_RDONLY ;
 int _O_TEMPORARY ;
 int * _fdopen (int,char*) ;
 int _open_osfhandle (intptr_t,int) ;
 int errno ;
 int * fopen (char const*,char*) ;
 int perror (char*) ;

int
pixie_fopen_shareable(FILE **in_fp, const char *filename, unsigned is_append)
{
    FILE *fp;

    *in_fp = ((void*)0);
    fp = fopen(filename, is_append?"a":"w");
    if (fp == ((void*)0))
        return errno;


    *in_fp = fp;
    return 0;
}
