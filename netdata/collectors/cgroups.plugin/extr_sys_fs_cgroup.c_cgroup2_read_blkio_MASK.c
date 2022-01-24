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
struct blkio {scalar_t__ enabled; scalar_t__ delay_counter; int updated; scalar_t__ Write; scalar_t__ Read; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  procfile ;

/* Variables and functions */
 scalar_t__ CONFIG_BOOLEAN_AUTO ; 
 scalar_t__ CONFIG_BOOLEAN_YES ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 scalar_t__ cgroup_recheck_zero_blkio_every_iterations ; 
 int cgroups_check ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ netdata_zero_metrics_enabled ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline void FUNC8(struct blkio *io, unsigned int word_offset) {
    if(FUNC7(io->enabled == CONFIG_BOOLEAN_AUTO && io->delay_counter > 0)) {
            io->delay_counter--;
            return;
        }

        if(FUNC1(io->filename)) {
            static procfile *ff = NULL;

            ff = FUNC5(ff, io->filename, NULL, PROCFILE_FLAG_DEFAULT);
            if(FUNC7(!ff)) {
                io->updated = 0;
                cgroups_check = 1;
                return;
            }

            ff = FUNC4(ff);
            if(FUNC7(!ff)) {
                io->updated = 0;
                cgroups_check = 1;
                return;
            }

            unsigned long i, lines = FUNC2(ff);

            if (FUNC7(lines < 1)) {
                FUNC0("CGROUP: file '%s' should have 1+ lines.", io->filename);
                io->updated = 0;
                return;
            }

            io->Read = 0;
            io->Write = 0;

            for (i = 0; i < lines; i++) {
                io->Read += FUNC6(FUNC3(ff, i, 2 + word_offset));
                io->Write += FUNC6(FUNC3(ff, i, 4 + word_offset));
            }

            io->updated = 1;

            if(FUNC7(io->enabled == CONFIG_BOOLEAN_AUTO)) {
                if(FUNC7(io->Read || io->Write || netdata_zero_metrics_enabled == CONFIG_BOOLEAN_YES))
                    io->enabled = CONFIG_BOOLEAN_YES;
                else
                    io->delay_counter = cgroup_recheck_zero_blkio_every_iterations;
            }
        }
}