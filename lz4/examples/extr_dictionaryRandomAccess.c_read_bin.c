
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 scalar_t__ ferror (int *) ;
 size_t fread (void*,int,size_t,int *) ;

size_t read_bin(FILE* fp, void* array, size_t arrayBytes) {
    size_t read = fread(array, 1, arrayBytes, fp);
    if (ferror(fp)) { exit(12); }
    return read;
}
