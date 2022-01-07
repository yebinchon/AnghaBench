
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
dtype_kind_to_simplified_ordering(char kind)
{
    switch (kind) {

        case 'b':
            return 0;

        case 'u':

        case 'i':
            return 1;

        case 'f':

        case 'c':
            return 2;

        default:
            return 3;
    }
}
