
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
dtype_kind_to_ordering(char kind)
{
    switch (kind) {

        case 'b':
            return 0;

        case 'u':
            return 1;

        case 'i':
            return 2;

        case 'f':
            return 4;

        case 'c':
            return 5;

        case 'S':
        case 'a':
            return 6;

        case 'U':
            return 7;

        case 'V':
            return 8;

        case 'O':
            return 9;




        default:
            return -1;
    }
}
