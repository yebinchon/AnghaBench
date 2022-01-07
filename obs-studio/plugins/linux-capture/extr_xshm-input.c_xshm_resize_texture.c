
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xshm_data {int height; int width; scalar_t__ texture; } ;


 int GS_BGRA ;
 int GS_DYNAMIC ;
 scalar_t__ gs_texture_create (int ,int ,int ,int,int *,int ) ;
 int gs_texture_destroy (scalar_t__) ;

__attribute__((used)) static inline void xshm_resize_texture(struct xshm_data *data)
{
 if (data->texture)
  gs_texture_destroy(data->texture);
 data->texture = gs_texture_create(data->width, data->height, GS_BGRA, 1,
       ((void*)0), GS_DYNAMIC);
}
