
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;
typedef int FILE ;


 int exit (int) ;
 size_t fwrite (int*,int,int,int *) ;

void write_int(FILE* fp, int i) {
    size_t written = fwrite(&i, sizeof(i), 1, fp);
    if (written != 1) { exit(10); }
}
