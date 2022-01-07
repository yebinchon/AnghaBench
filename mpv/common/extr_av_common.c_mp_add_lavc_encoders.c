
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decoder_list {int dummy; } ;


 int AVMEDIA_TYPE_UNKNOWN ;
 int add_codecs (struct mp_decoder_list*,int ,int) ;

void mp_add_lavc_encoders(struct mp_decoder_list *list)
{
    add_codecs(list, AVMEDIA_TYPE_UNKNOWN, 0);
}
