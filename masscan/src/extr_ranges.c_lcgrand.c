
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
lcgrand(unsigned *state)
{
    *state = 1103515245 * (*state) + 12345;
    return *state;
}
