
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ft2_source {int cy; } ;



__attribute__((used)) static uint32_t ft2_source_get_height(void *data)
{
 struct ft2_source *srcdata = data;

 return srcdata->cy;
}
