
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_log {int dummy; } ;
struct mp_decoder_list {int num_entries; struct mp_decoder_entry* entries; } ;
struct mp_decoder_entry {int desc; int codec; int decoder; } ;


 int mp_msg (struct mp_log*,int,char*,...) ;
 scalar_t__ strcmp (int ,int ) ;

void mp_print_decoders(struct mp_log *log, int msgl, const char *header,
                       struct mp_decoder_list *list)
{
    mp_msg(log, msgl, "%s\n", header);
    for (int n = 0; n < list->num_entries; n++) {
        struct mp_decoder_entry *entry = &list->entries[n];
        mp_msg(log, msgl, "    %s", entry->decoder);
        if (strcmp(entry->decoder, entry->codec) != 0)
            mp_msg(log, msgl, " (%s)", entry->codec);
        mp_msg(log, msgl, " - %s\n", entry->desc);
    }
    if (list->num_entries == 0)
        mp_msg(log, msgl, "    (no decoders)\n");
}
