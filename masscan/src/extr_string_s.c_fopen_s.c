
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errno_t ;
typedef int FILE ;


 int EINVAL ;
 int errno ;
 int * fopen (char const*,char const*) ;

errno_t fopen_s(FILE **pFile, const char *filename, const char *mode)
{
    if (pFile == ((void*)0) || filename == ((void*)0) || mode == ((void*)0))
        return EINVAL;
    *pFile = fopen(filename, mode);
    if (*pFile != ((void*)0))
        return 0;
    else
        return errno;
}
