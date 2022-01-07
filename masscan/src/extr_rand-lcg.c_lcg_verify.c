
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 unsigned char* CALLOC (int,size_t) ;
 int free (unsigned char*) ;
 scalar_t__ lcg_rand (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static unsigned
lcg_verify(uint64_t a, uint64_t c, uint64_t range, uint64_t max)
{
    unsigned char *list;
    uint64_t i;
    unsigned is_success = 1;


    list = CALLOC(1, (size_t)((range<max)?range:max));



    for (i=0; i<range; i++) {
        uint64_t x = lcg_rand(i, a, c, range);
        if (x < max)
            list[x]++;
    }



    for (i=0; i<max && i<range; i++) {
        if (list[i] != 1)
            is_success = 0;
    }

    free(list);

    return is_success;
}
