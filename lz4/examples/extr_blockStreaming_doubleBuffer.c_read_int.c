
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t fread (int*,int,int,int *) ;

size_t read_int(FILE* fp, int* i) {
    return fread(i, sizeof(*i), 1, fp);
}
