#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mp_tags {int dummy; } ;
struct AVDictionary {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 TYPE_1__* FUNC0 (struct AVDictionary*,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_tags*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct mp_tags *tags,
                                     struct AVDictionary *av_dict)
{
    AVDictionaryEntry *entry = NULL;
    while ((entry = FUNC0(av_dict, "", entry, AV_DICT_IGNORE_SUFFIX)))
        FUNC1(tags, entry->key, entry->value);
}