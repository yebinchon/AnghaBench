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
struct mp_decoder_list {int /*<<< orphan*/  num_entries; int /*<<< orphan*/  entries; } ;
struct mp_decoder_entry {int /*<<< orphan*/  desc; int /*<<< orphan*/  decoder; int /*<<< orphan*/  codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_decoder_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mp_decoder_entry) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_decoder_list*,char const*) ; 

void FUNC2(struct mp_decoder_list *list, const char *codec,
                    const char *decoder, const char *desc)
{
    struct mp_decoder_entry entry = {
        .codec = FUNC1(list, codec),
        .decoder = FUNC1(list, decoder),
        .desc = FUNC1(list, desc),
    };
    FUNC0(list, list->entries, list->num_entries, entry);
}