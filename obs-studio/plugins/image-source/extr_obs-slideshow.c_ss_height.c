
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct slideshow {int cy; scalar_t__ transition; } ;



__attribute__((used)) static uint32_t ss_height(void *data)
{
 struct slideshow *ss = data;
 return ss->transition ? ss->cy : 0;
}
