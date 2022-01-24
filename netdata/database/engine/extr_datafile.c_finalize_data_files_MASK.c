#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct rrdengine_journalfile* first; } ;
struct rrdengine_journalfile {struct rrdengine_journalfile* next; TYPE_1__ extents; struct rrdengine_journalfile* journalfile; } ;
struct TYPE_4__ {struct rrdengine_journalfile* first; } ;
struct rrdengine_instance {TYPE_2__ datafiles; } ;
struct rrdengine_datafile {struct rrdengine_datafile* next; TYPE_1__ extents; struct rrdengine_datafile* journalfile; } ;
struct extent_info {struct extent_info* next; TYPE_1__ extents; struct extent_info* journalfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rrdengine_journalfile*) ; 
 int /*<<< orphan*/  FUNC1 (struct rrdengine_journalfile*,struct rrdengine_journalfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct rrdengine_journalfile*) ; 

void FUNC3(struct rrdengine_instance *ctx)
{
    struct rrdengine_datafile *datafile, *next_datafile;
    struct rrdengine_journalfile *journalfile;
    struct extent_info *extent, *next_extent;

    for (datafile = ctx->datafiles.first ; datafile != NULL ; datafile = next_datafile) {
        journalfile = datafile->journalfile;
        next_datafile = datafile->next;

        for (extent = datafile->extents.first ; extent != NULL ; extent = next_extent) {
            next_extent = extent->next;
            FUNC2(extent);
        }
        FUNC1(journalfile, datafile);
        FUNC0(datafile);
        FUNC2(journalfile);
        FUNC2(datafile);

    }
}