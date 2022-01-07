
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int chroma_upsize(int size, int pixel)
{
    return (size + pixel - 1) / pixel * pixel;
}
