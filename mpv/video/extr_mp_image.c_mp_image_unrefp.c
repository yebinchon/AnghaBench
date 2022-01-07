
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {int dummy; } ;


 int talloc_free (struct mp_image*) ;

void mp_image_unrefp(struct mp_image **p_img)
{
    talloc_free(*p_img);
    *p_img = ((void*)0);
}
