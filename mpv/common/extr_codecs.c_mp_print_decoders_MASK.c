#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mp_log {int dummy; } ;
struct mp_decoder_list {int num_entries; struct mp_decoder_entry* entries; } ;
struct mp_decoder_entry {int /*<<< orphan*/  desc; int /*<<< orphan*/  codec; int /*<<< orphan*/  decoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_log*,int,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct mp_log *log, int msgl, const char *header,
                       struct mp_decoder_list *list)
{
    FUNC0(log, msgl, "%s\n", header);
    for (int n = 0; n < list->num_entries; n++) {
        struct mp_decoder_entry *entry = &list->entries[n];
        FUNC0(log, msgl, "    %s", entry->decoder);
        if (FUNC1(entry->decoder, entry->codec) != 0)
            FUNC0(log, msgl, " (%s)", entry->codec);
        FUNC0(log, msgl, " - %s\n", entry->desc);
    }
    if (list->num_entries == 0)
        FUNC0(log, msgl, "    (no decoders)\n");
}