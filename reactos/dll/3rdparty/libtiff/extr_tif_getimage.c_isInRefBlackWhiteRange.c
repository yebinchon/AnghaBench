
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int isInRefBlackWhiteRange(float f)
{
    return f > (float)(-0x7FFFFFFF + 128) && f < (float)0x7FFFFFFF;
}
