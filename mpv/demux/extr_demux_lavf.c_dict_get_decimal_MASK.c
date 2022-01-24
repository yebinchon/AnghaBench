#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ value; } ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 long INT_MAX ; 
 long INT_MIN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC1 (scalar_t__,char**,int) ; 

__attribute__((used)) static int FUNC2(AVDictionary *dict, const char *entry, int def)
{
    AVDictionaryEntry *e = FUNC0(dict, entry, NULL, 0);
    if (e && e->value) {
        char *end = NULL;
        long int r = FUNC1(e->value, &end, 10);
        if (end && !end[0] && r >= INT_MIN && r <= INT_MAX)
            return r;
    }
    return def;
}