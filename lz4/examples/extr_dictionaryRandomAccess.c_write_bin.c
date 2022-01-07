
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 size_t fwrite (void const*,int,size_t,int *) ;

void write_bin(FILE* fp, const void* array, size_t arrayBytes) {
    size_t written = fwrite(array, 1, arrayBytes, fp);
    if (written != arrayBytes) { exit(11); }
}
