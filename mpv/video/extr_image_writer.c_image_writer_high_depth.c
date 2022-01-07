
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_writer_opts {scalar_t__ format; } ;


 scalar_t__ AV_CODEC_ID_PNG ;

bool image_writer_high_depth(const struct image_writer_opts *opts)
{
    return opts->format == AV_CODEC_ID_PNG;
}
