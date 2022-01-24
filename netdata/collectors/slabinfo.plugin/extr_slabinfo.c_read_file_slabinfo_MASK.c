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
typedef  void* uint64_t ;
typedef  int uint32_t ;
struct slabinfo {int active_objs; int num_objs; int obj_size; long pages_per_slab; int data_num_slabs; void* mem_usage; int obj_filling; void* mem_waste; void* data_shared_avail; void* data_active_slabs; void* tune_shared_factor; void* tune_batchcnt; void* tune_limit; void* obj_per_slab; } ;
typedef  int /*<<< orphan*/  procfile ;

/* Variables and functions */
 int /*<<< orphan*/  PLUGIN_SLABINFO_PROCFILE ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct slabinfo* FUNC2 (char*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 struct slabinfo* slabinfo_root ; 
 void* FUNC9 (char*) ; 
 long FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

struct slabinfo *FUNC12() {

    FUNC8("-> Reading procfile %s", PLUGIN_SLABINFO_PROCFILE);

    static procfile *ff = NULL;
	static long slab_pagesize = 0;

	if (FUNC11(!slab_pagesize)) {
		slab_pagesize = FUNC10(_SC_PAGESIZE);
		FUNC8("   Discovered pagesize: %ld", slab_pagesize);
	}

    if(FUNC11(!ff)) {
        ff = FUNC7(ff, PLUGIN_SLABINFO_PROCFILE, " ,:" , PROCFILE_FLAG_DEFAULT);
        if(FUNC11(!ff)) {
            FUNC0("<- Cannot open file '%s", PLUGIN_SLABINFO_PROCFILE);
            FUNC1(1);
        }
    }

    ff = FUNC6(ff);
    if(FUNC11(!ff)) {
        FUNC0("<- Cannot read file '%s'", PLUGIN_SLABINFO_PROCFILE);
        FUNC1(0);
    }


    // Iterate on all lines to populate / update the slabinfo struct
    size_t lines = FUNC3(ff), l;

    FUNC8("   Read %lu lines from procfile", (unsigned long)lines);
    for(l = 2; l < lines; l++) {
        if (FUNC11(FUNC5(ff, l) < 14)) {
            FUNC8("    Line %lu has only %lu words, skipping", (unsigned long)l, FUNC5(ff,l));
            continue;
        }

        char *name = FUNC4(ff, l, 0);
        struct slabinfo *s = FUNC2(name);

        s->active_objs    = FUNC9(FUNC4(ff, l, 1));
        s->num_objs       = FUNC9(FUNC4(ff, l, 2));
        s->obj_size       = FUNC9(FUNC4(ff, l, 3));
        s->obj_per_slab   = FUNC9(FUNC4(ff, l, 4));
        s->pages_per_slab = FUNC9(FUNC4(ff, l, 5));

        s->tune_limit     = FUNC9(FUNC4(ff, l, 7));
        s->tune_batchcnt  = FUNC9(FUNC4(ff, l, 8));
        s->tune_shared_factor = FUNC9(FUNC4(ff, l, 9));

        s->data_active_slabs = FUNC9(FUNC4(ff, l, 11));
        s->data_num_slabs    = FUNC9(FUNC4(ff, l, 12));
        s->data_shared_avail = FUNC9(FUNC4(ff, l, 13));

        uint32_t memperslab = s->pages_per_slab * slab_pagesize;
        // Internal fragmentation: loss per slab, due to objects not being a multiple of pagesize
        //uint32_t lossperslab = memperslab - s->obj_per_slab * s->obj_size;

        // Total usage = slabs * pages per slab * page size
        s->mem_usage = (uint64_t)(s->data_num_slabs * memperslab);

        // Wasted memory (filling): slabs allocated but not filled: sum total slab - sum total objects
        s->mem_waste = s->mem_usage - (uint64_t)(s->active_objs * s->obj_size);
        //if (s->data_num_slabs > 1)
        //    s->mem_waste += s->data_num_slabs * lossperslab;


        // Slab filling efficiency
        if (s->num_objs > 0)
            s->obj_filling = 100 * s->active_objs / s->num_objs;
        else
            s->obj_filling = 0;

        FUNC8("    Updated slab %s: %lu %lu %lu %lu %lu / %lu %lu %lu / %lu %lu %lu / %lu %lu %hhu",
            name, s->active_objs, s->num_objs, s->obj_size, s->obj_per_slab, s->pages_per_slab,
            s->tune_limit, s->tune_batchcnt, s->tune_shared_factor,
            s->data_active_slabs, s->data_num_slabs, s->data_shared_avail,
            s->mem_usage, s->mem_waste, s->obj_filling);
    }

    return slabinfo_root;
}