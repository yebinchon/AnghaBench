
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
json_isspace(int c)
{
    switch (c) {
    case 0x09:
    case 0x0a:
    case 0x0d:
    case 0x20:
        return 1;
    }

    return 0;
}
