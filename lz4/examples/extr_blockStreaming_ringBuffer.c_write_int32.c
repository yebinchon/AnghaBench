
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int i ;
typedef int FILE ;


 size_t fwrite (int *,int,int,int *) ;

size_t write_int32(FILE* fp, int32_t i) {
    return fwrite(&i, sizeof(i), 1, fp);
}
