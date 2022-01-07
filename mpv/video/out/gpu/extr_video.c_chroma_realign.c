
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ chroma_upsize (int,int) ;

__attribute__((used)) static float chroma_realign(int size, int pixel)
{
    return size / (float)chroma_upsize(size, pixel);
}
