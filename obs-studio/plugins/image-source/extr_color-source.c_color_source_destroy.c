
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfree (void*) ;

__attribute__((used)) static void color_source_destroy(void *data)
{
 bfree(data);
}
