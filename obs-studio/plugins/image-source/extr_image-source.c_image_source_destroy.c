
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_source {struct image_source* file; } ;


 int bfree (struct image_source*) ;
 int image_source_unload (struct image_source*) ;

__attribute__((used)) static void image_source_destroy(void *data)
{
 struct image_source *context = data;

 image_source_unload(context);

 if (context->file)
  bfree(context->file);
 bfree(context);
}
