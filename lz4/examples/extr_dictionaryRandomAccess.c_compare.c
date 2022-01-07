
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int b1 ;
typedef int b0 ;
typedef int FILE ;


 int MIN (int,int) ;
 int memcmp (char*,char*,size_t const) ;
 size_t read_bin (int *,char*,int ) ;

int compare(FILE* fp0, FILE* fp1, int length)
{
    int result = 0;

    while(0 == result) {
        char b0[4096];
        char b1[4096];
        const size_t r0 = read_bin(fp0, b0, MIN(length, (int)sizeof(b0)));
        const size_t r1 = read_bin(fp1, b1, MIN(length, (int)sizeof(b1)));

        result = (int) r0 - (int) r1;

        if(0 == r0 || 0 == r1) {
            break;
        }
        if(0 == result) {
            result = memcmp(b0, b1, r0);
        }
        length -= r0;
    }

    return result;
}
