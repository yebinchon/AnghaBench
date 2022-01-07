
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
row_shift_from_symbol_count(unsigned symbol_count)
{
    unsigned row_shift = 1;

    symbol_count++;

    while ((unsigned)(1 << row_shift) < symbol_count)
        row_shift++;

    return row_shift;
}
