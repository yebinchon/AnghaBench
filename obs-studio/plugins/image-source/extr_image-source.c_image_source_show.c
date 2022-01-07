
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_source {int persistent; } ;


 int image_source_load (struct image_source*) ;

__attribute__((used)) static void image_source_show(void *data)
{
 struct image_source *context = data;

 if (!context->persistent)
  image_source_load(context);
}
