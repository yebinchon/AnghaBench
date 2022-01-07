
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* mp_image_new_ref (void*) ;

__attribute__((used)) static void *video_ref(void *data)
{
    return mp_image_new_ref(data);
}
