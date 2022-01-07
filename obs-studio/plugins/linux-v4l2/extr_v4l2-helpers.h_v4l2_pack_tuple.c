
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int v4l2_pack_tuple(int a, int b)
{
 return (a << 16) | (b & 0xffff);
}
