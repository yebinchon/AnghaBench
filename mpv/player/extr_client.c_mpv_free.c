
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int talloc_free (void*) ;

void mpv_free(void *data)
{
    talloc_free(data);
}
