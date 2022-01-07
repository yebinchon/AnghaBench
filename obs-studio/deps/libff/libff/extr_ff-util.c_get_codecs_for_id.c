
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ff_format_desc {int dummy; } ;
struct ff_codec_desc {int dummy; } ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_5__ {int id; } ;
typedef TYPE_1__ AVCodec ;


 int add_codec_to_list (struct ff_format_desc const*,struct ff_codec_desc**,struct ff_codec_desc**,int ,TYPE_1__ const*,int) ;
 TYPE_1__* next_codec_for_id (int,TYPE_1__ const*) ;

__attribute__((used)) static void get_codecs_for_id(const struct ff_format_desc *format_desc,
                              struct ff_codec_desc **first,
                              struct ff_codec_desc **current, enum AVCodecID id,
                              bool ignore_compatability)
{
 const AVCodec *codec = ((void*)0);
 while ((codec = next_codec_for_id(id, codec)) != ((void*)0))
  add_codec_to_list(format_desc, first, current, codec->id, codec,
                    ignore_compatability);
}
