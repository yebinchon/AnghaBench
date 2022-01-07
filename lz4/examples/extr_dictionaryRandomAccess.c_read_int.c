
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 size_t fread (int*,int,int,int *) ;

void read_int(FILE* fp, int* i) {
    size_t read = fread(i, sizeof(*i), 1, fp);
    if (read != 1) { exit(12); }
}
