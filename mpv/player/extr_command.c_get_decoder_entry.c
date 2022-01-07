
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decoder_list {struct mp_decoder_entry* entries; } ;
struct mp_decoder_entry {int desc; int decoder; int codec; } ;
struct m_sub_property {char* member_0; int member_1; } ;


 int SUB_PROP_STR (int ) ;
 int m_property_read_sub (struct m_sub_property*,int,void*) ;

__attribute__((used)) static int get_decoder_entry(int item, int action, void *arg, void *ctx)
{
    struct mp_decoder_list *codecs = ctx;
    struct mp_decoder_entry *c = &codecs->entries[item];

    struct m_sub_property props[] = {
        {"codec", SUB_PROP_STR(c->codec)},
        {"driver" , SUB_PROP_STR(c->decoder)},
        {"description", SUB_PROP_STR(c->desc)},
        {0}
    };

    return m_property_read_sub(props, action, arg);
}
