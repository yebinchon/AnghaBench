
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdFree (void*) ;

__attribute__((used)) static void
ngx_http_image_cleanup(void *data)
{
    gdFree(data);
}
