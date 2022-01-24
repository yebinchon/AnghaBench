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
typedef  scalar_t__ uint32_t ;
struct blkio {scalar_t__ enabled; scalar_t__ delay_counter; int updated; scalar_t__ Write; scalar_t__ Read; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  procfile ;

/* Variables and functions */
 scalar_t__ CONFIG_BOOLEAN_AUTO ; 
 scalar_t__ CONFIG_BOOLEAN_YES ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 scalar_t__ Read_hash ; 
 scalar_t__ Write_hash ; 
 scalar_t__ cgroup_recheck_zero_blkio_every_iterations ; 
 int cgroups_check ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ netdata_zero_metrics_enabled ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,unsigned long,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static inline void FUNC10(struct blkio *io) {
    if(FUNC9(io->enabled == CONFIG_BOOLEAN_AUTO && io->delay_counter > 0)) {
        io->delay_counter--;
        return;
    }

    if(FUNC1(io->filename)) {
        static procfile *ff = NULL;

        ff = FUNC5(ff, io->filename, NULL, PROCFILE_FLAG_DEFAULT);
        if(FUNC9(!ff)) {
            io->updated = 0;
            cgroups_check = 1;
            return;
        }

        ff = FUNC4(ff);
        if(FUNC9(!ff)) {
            io->updated = 0;
            cgroups_check = 1;
            return;
        }

        unsigned long i, lines = FUNC2(ff);

        if(FUNC9(lines < 1)) {
            FUNC0("CGROUP: file '%s' should have 1+ lines.", io->filename);
            io->updated = 0;
            return;
        }

        io->Read = 0;
        io->Write = 0;
/*
        io->Sync = 0;
        io->Async = 0;
        io->Total = 0;
*/

        for(i = 0; i < lines ; i++) {
            char *s = FUNC3(ff, i, 1);
            uint32_t hash = FUNC6(s);

            if(FUNC9(hash == Read_hash && !FUNC8(s, "Read")))
                io->Read += FUNC7(FUNC3(ff, i, 2));

            else if(FUNC9(hash == Write_hash && !FUNC8(s, "Write")))
                io->Write += FUNC7(FUNC3(ff, i, 2));

/*
            else if(unlikely(hash == Sync_hash && !strcmp(s, "Sync")))
                io->Sync += str2ull(procfile_lineword(ff, i, 2));

            else if(unlikely(hash == Async_hash && !strcmp(s, "Async")))
                io->Async += str2ull(procfile_lineword(ff, i, 2));

            else if(unlikely(hash == Total_hash && !strcmp(s, "Total")))
                io->Total += str2ull(procfile_lineword(ff, i, 2));
*/
        }

        io->updated = 1;

        if(FUNC9(io->enabled == CONFIG_BOOLEAN_AUTO)) {
            if(FUNC9(io->Read || io->Write || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))
                io->enabled = CONFIG_BOOLEAN_YES;
            else
                io->delay_counter = cgroup_recheck_zero_blkio_every_iterations;
        }
    }
}