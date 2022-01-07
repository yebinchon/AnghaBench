
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int BatHit( int bath, int batl, int virt ) {
    int mask = 0xfffe0000 & ~((batl & 0x3f) << 17);
    return (batl & 0x40) && ((virt & mask) == (bath & mask));
}
