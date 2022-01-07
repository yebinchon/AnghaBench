
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int assert (int) ;
 size_t fwrite (void const*,int,size_t,int *) ;

size_t write_bin(FILE* fp, const void* array, int arrayBytes) {
    assert(arrayBytes >= 0);
    return fwrite(array, 1, (size_t)arrayBytes, fp);
}
