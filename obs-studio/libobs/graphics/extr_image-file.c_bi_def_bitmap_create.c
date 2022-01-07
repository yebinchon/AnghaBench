
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* bmalloc (int) ;

__attribute__((used)) static void *bi_def_bitmap_create(int width, int height)
{
 return bmalloc(width * height * 4);
}
