
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
    if (id & FIVE_BYTE)
        return 4;
    if (id & FOUR_BYTE)
        return 3;
    if (id & THREE_BYTE)
        return 2;
    if (id & TWO_BYTE)
        return 1;
    return 0;
}
