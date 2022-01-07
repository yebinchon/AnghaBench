
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfree (void*) ;

__attribute__((used)) static void bi_def_bitmap_destroy(void *bitmap)
{
 bfree(bitmap);
}
