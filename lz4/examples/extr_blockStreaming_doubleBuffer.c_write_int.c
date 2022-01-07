
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;
typedef int FILE ;


 size_t fwrite (int*,int,int,int *) ;

size_t write_int(FILE* fp, int i) {
    return fwrite(&i, sizeof(i), 1, fp);
}
