
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t num; struct cached_cursor* array; } ;
struct cursor_data {TYPE_1__ cached_textures; } ;
struct cached_cursor {int texture; } ;


 int da_free (TYPE_1__) ;
 int gs_texture_destroy (int ) ;
 int memset (struct cursor_data*,int ,int) ;

void cursor_data_free(struct cursor_data *data)
{
 for (size_t i = 0; i < data->cached_textures.num; i++) {
  struct cached_cursor *pcc = &data->cached_textures.array[i];
  gs_texture_destroy(pcc->texture);
 }
 da_free(data->cached_textures);
 memset(data, 0, sizeof(*data));
}
