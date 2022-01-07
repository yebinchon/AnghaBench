
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int bn_mr_min_checks(int bits)
{
    if (bits > 2048)
        return 128;
    return 64;
}
