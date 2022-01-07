
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decoder_list {int num_entries; int entries; } ;
struct mp_decoder_entry {int desc; int decoder; int codec; } ;


 int MP_TARRAY_APPEND (struct mp_decoder_list*,int ,int ,struct mp_decoder_entry) ;
 int talloc_strdup (struct mp_decoder_list*,char const*) ;

void mp_add_decoder(struct mp_decoder_list *list, const char *codec,
                    const char *decoder, const char *desc)
{
    struct mp_decoder_entry entry = {
        .codec = talloc_strdup(list, codec),
        .decoder = talloc_strdup(list, decoder),
        .desc = talloc_strdup(list, desc),
    };
    MP_TARRAY_APPEND(list, list->entries, list->num_entries, entry);
}
