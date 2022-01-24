#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  avl ;
struct TYPE_7__ {int /*<<< orphan*/  rrdset_root_index_name; } ;
struct TYPE_6__ {char const* name; char* id; int /*<<< orphan*/  magic; int /*<<< orphan*/  avlname; scalar_t__ hash_name; } ;
typedef  TYPE_1__ RRDSET ;
typedef  TYPE_2__ RRDHOST ;

/* Variables and functions */
 int /*<<< orphan*/  RRDSET_MAGIC ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char*,char const*) ; 
 TYPE_1__* FUNC2 (void*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline RRDSET *FUNC5(RRDHOST *host, const char *name, uint32_t hash) {
    void *result = NULL;
    RRDSET tmp;
    tmp.name = name;
    tmp.hash_name = (hash)?hash:FUNC3(tmp.name);

    // fprintf(stderr, "SEARCHING: %s\n", name);
    result = FUNC0(&host->rrdset_root_index_name, (avl *) (&(tmp.avlname)));
    if(result) {
        RRDSET *st = FUNC2(result);
        if(FUNC4(st->magic, RRDSET_MAGIC) != 0)
            FUNC1("Search for RRDSET %s returned an invalid RRDSET %s (name %s)", name, st->id, st->name);

        // fprintf(stderr, "FOUND: %s\n", name);
        return FUNC2(result);
    }
    // fprintf(stderr, "NOT FOUND: %s\n", name);
    return NULL;
}