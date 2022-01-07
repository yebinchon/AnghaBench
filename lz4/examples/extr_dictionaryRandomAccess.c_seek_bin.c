
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 scalar_t__ fseek (int *,long,int) ;

void seek_bin(FILE* fp, long offset, int origin) {
    if (fseek(fp, offset, origin)) { exit(14); }
}
