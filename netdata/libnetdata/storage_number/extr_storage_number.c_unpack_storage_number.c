
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int storage_number ;
typedef int calculated_number ;


 scalar_t__ unlikely (int) ;

calculated_number unpack_storage_number(storage_number value) {
    if(!value) return 0;

    int sign = 0, exp = 0;
    int factor = 10;


    if(unlikely(value & (1 << 31)))
        sign = 1;


    if(unlikely(value & (1 << 30)))
        exp = 1;


    if(unlikely(value & (1 << 26)))
        factor = 100;





    int mul = (value & ((1<<29)|(1<<28)|(1<<27))) >> 27;


    value ^= value & ((1<<31)|(1<<30)|(1<<29)|(1<<28)|(1<<27)|(1<<26)|(1<<25)|(1<<24));

    calculated_number n = value;



    if(exp) {
        for(; mul; mul--)
            n *= factor;
    }
    else {
        for( ; mul ; mul--)
            n /= 10;
    }

    if(sign) n = -n;
    return n;
}
