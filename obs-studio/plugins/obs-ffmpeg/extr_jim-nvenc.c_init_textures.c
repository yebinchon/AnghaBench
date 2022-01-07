
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvenc_data {size_t buf_count; int textures; int bitstreams; } ;
struct nv_texture {int dummy; } ;


 int da_push_back (int ,struct nv_texture*) ;
 int da_reserve (int ,size_t) ;
 int nv_texture_init (struct nvenc_data*,struct nv_texture*) ;

__attribute__((used)) static bool init_textures(struct nvenc_data *enc)
{
 da_reserve(enc->bitstreams, enc->buf_count);
 for (size_t i = 0; i < enc->buf_count; i++) {
  struct nv_texture texture;
  if (!nv_texture_init(enc, &texture)) {
   return 0;
  }

  da_push_back(enc->textures, &texture);
 }

 return 1;
}
