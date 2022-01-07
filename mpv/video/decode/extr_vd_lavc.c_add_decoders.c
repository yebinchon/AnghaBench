
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decoder_list {int dummy; } ;


 int AVMEDIA_TYPE_VIDEO ;
 int mp_add_lavc_decoders (struct mp_decoder_list*,int ) ;

__attribute__((used)) static void add_decoders(struct mp_decoder_list *list)
{
    mp_add_lavc_decoders(list, AVMEDIA_TYPE_VIDEO);
}
