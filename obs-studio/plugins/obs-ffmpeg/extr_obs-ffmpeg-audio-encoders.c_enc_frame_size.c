
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enc_encoder {size_t frame_size; } ;



__attribute__((used)) static size_t enc_frame_size(void *data)
{
 struct enc_encoder *enc = data;
 return enc->frame_size;
}
