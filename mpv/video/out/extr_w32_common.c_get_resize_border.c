
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_resize_border(int v)
{
    switch (v) {
    case 132: return 3;
    case 130: return 2;
    case 131: return 3;
    case 135: return 2;
    case 129: return 1;
    case 128: return 1;
    case 134: return 3;
    case 133: return 3;
    default: return -1;
    }
}
