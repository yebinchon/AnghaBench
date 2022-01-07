
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* format; } ;
struct pl_tex {TYPE_2__ params; } ;
struct TYPE_3__ {size_t texel_size; } ;


 int assert (int) ;

__attribute__((used)) static int texel_stride_w(size_t stride, const struct pl_tex *tex)
{
    size_t texel_size = tex->params.format->texel_size;
    int texels = stride / texel_size;
    assert(texels * texel_size == stride);
    return texels;
}
