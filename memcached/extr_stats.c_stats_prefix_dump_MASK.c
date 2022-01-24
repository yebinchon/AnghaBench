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
struct TYPE_3__ {int /*<<< orphan*/  num_deletes; int /*<<< orphan*/  num_sets; int /*<<< orphan*/  num_hits; int /*<<< orphan*/  num_gets; int /*<<< orphan*/  prefix; struct TYPE_3__* next; } ;
typedef  TYPE_1__ PREFIX_STATS ;

/* Variables and functions */
 int PREFIX_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int num_prefixes ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__** prefix_stats ; 
 size_t FUNC6 (char*,size_t,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 
 int total_prefix_size ; 

char *FUNC8(int *length) {
    const char *format = "PREFIX %s get %llu hit %llu set %llu del %llu\r\n";
    PREFIX_STATS *pfs;
    char *buf;
    int i, pos;
    size_t size = 0, written = 0, total_written = 0;

    /*
     * Figure out how big the buffer needs to be. This is the sum of the
     * lengths of the prefixes themselves, plus the size of one copy of
     * the per-prefix output with 20-digit values for all the counts,
     * plus space for the "END" at the end.
     */
    FUNC0();
    size = FUNC7(format) + total_prefix_size +
           num_prefixes * (FUNC7(format) - 2 /* %s */
                           + 4 * (20 - 4)) /* %llu replaced by 20-digit num */
                           + sizeof("END\r\n");
    buf = FUNC3(size);
    if (NULL == buf) {
        FUNC5("Can't allocate stats response: malloc");
        FUNC1();
        return NULL;
    }

    pos = 0;
    for (i = 0; i < PREFIX_HASH_SIZE; i++) {
        for (pfs = prefix_stats[i]; NULL != pfs; pfs = pfs->next) {
            written = FUNC6(buf + pos, size-pos, format,
                           pfs->prefix, pfs->num_gets, pfs->num_hits,
                           pfs->num_sets, pfs->num_deletes);
            pos += written;
            total_written += written;
            FUNC2(total_written < size);
        }
    }

    FUNC1();
    FUNC4(buf + pos, "END\r\n", 6);

    *length = pos + 5;
    return buf;
}