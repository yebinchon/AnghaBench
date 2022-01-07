
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decoder_list {int dummy; } ;
typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;


 int add_codecs (struct mp_decoder_list*,int,int) ;

void mp_add_lavc_decoders(struct mp_decoder_list *list, enum AVMediaType type)
{
    add_codecs(list, type, 1);
}
