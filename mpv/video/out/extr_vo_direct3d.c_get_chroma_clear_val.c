
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_chroma_clear_val(int bit_depth)
{
    return 1 << ((bit_depth - 1) & 7);
}
