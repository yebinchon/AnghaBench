
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvenc_data {size_t buf_count; int bitstreams; } ;
struct nv_bitstream {int dummy; } ;


 int da_push_back (int ,struct nv_bitstream*) ;
 int da_reserve (int ,size_t) ;
 int nv_bitstream_init (struct nvenc_data*,struct nv_bitstream*) ;

__attribute__((used)) static bool init_bitstreams(struct nvenc_data *enc)
{
 da_reserve(enc->bitstreams, enc->buf_count);
 for (size_t i = 0; i < enc->buf_count; i++) {
  struct nv_bitstream bitstream;
  if (!nv_bitstream_init(enc, &bitstream)) {
   return 0;
  }

  da_push_back(enc->bitstreams, &bitstream);
 }

 return 1;
}
