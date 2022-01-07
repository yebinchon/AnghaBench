
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_decoder_list {int dummy; } ;
struct mp_decoder_entry {int desc; int decoder; int codec; } ;


 int mp_add_decoder (struct mp_decoder_list*,int ,int ,int ) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static void add_new(struct mp_decoder_list *to, struct mp_decoder_entry *entry,
                    const char *codec)
{
    if (!entry || (codec && strcmp(entry->codec, codec) != 0))
        return;
    mp_add_decoder(to, entry->codec, entry->decoder, entry->desc);
}
