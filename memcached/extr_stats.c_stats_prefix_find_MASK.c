#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_8__ {char const prefix_delimiter; } ;
struct TYPE_7__ {char* prefix; size_t prefix_len; struct TYPE_7__* next; } ;
typedef  TYPE_1__ PREFIX_STATS ;

/* Variables and functions */
 size_t PREFIX_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (char const*,size_t) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  num_prefixes ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__** prefix_stats ; 
 TYPE_3__ settings ; 
 scalar_t__ FUNC6 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 size_t total_prefix_size ; 

__attribute__((used)) static PREFIX_STATS *FUNC8(const char *key, const size_t nkey) {
    PREFIX_STATS *pfs;
    uint32_t hashval;
    size_t length;
    bool bailout = true;

    FUNC0(key != NULL);

    for (length = 0; length < nkey && key[length] != '\0'; length++) {
        if (key[length] == settings.prefix_delimiter) {
            bailout = false;
            break;
        }
    }

    if (bailout) {
        return NULL;
    }

    hashval = FUNC3(key, length) % PREFIX_HASH_SIZE;

    for (pfs = prefix_stats[hashval]; NULL != pfs; pfs = pfs->next) {
        if (FUNC6(pfs->prefix, key, length) == 0)
            return pfs;
    }

    pfs = FUNC1(sizeof(PREFIX_STATS), 1);
    if (NULL == pfs) {
        FUNC5("Can't allocate space for stats structure: calloc");
        return NULL;
    }

    pfs->prefix = FUNC4(length + 1);
    if (NULL == pfs->prefix) {
        FUNC5("Can't allocate space for copy of prefix: malloc");
        FUNC2(pfs);
        return NULL;
    }

    FUNC7(pfs->prefix, key, length);
    pfs->prefix[length] = '\0';      /* because strncpy() sucks */
    pfs->prefix_len = length;

    pfs->next = prefix_stats[hashval];
    prefix_stats[hashval] = pfs;

    num_prefixes++;
    total_prefix_size += length;

    return pfs;
}