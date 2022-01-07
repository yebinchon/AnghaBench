
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FIVE_BYTE ;
 unsigned int FOUR_BYTE ;
 unsigned int THREE_BYTE ;
 unsigned int TWO_BYTE ;

__attribute__((used)) static unsigned
id_prefix_count(unsigned id)
{





    if (id & ((unsigned long long)(~0)<<28))
        return 4;
    if (id & ((unsigned long long)(~0)<<21))
        return 3;
    if (id & ((unsigned long long)(~0)<<14))
        return 2;
    if (id & ((unsigned long long)(~0)<<7))
        return 1;
    return 0;
}
