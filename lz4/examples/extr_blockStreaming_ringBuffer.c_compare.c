
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int b1 ;
typedef int b0 ;
typedef int FILE ;


 size_t fread (char*,int,int,int *) ;
 int memcmp (char*,char*,size_t const) ;

int compare(FILE* f0, FILE* f1)
{
    int result = 0;

    while (0 == result) {
        char b0[65536];
        char b1[65536];
        const size_t r0 = fread(b0, 1, sizeof(b0), f0);
        const size_t r1 = fread(b1, 1, sizeof(b1), f1);

        result = (int) r0 - (int) r1;

        if (0 == r0 || 0 == r1) break;

        if (0 == result) result = memcmp(b0, b1, r0);
    }

    return result;
}
