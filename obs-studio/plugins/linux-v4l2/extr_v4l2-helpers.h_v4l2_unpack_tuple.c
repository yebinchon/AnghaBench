
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void v4l2_unpack_tuple(int *a, int *b, int packed)
{
 *a = packed >> 16;
 *b = packed & 0xffff;
}
