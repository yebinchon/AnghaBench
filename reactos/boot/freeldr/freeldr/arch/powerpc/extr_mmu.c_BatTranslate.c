
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int BatTranslate( int bath, int batl, int virt ) {
    return (virt & 0x007fffff) | (batl & 0xfffe0000);
}
