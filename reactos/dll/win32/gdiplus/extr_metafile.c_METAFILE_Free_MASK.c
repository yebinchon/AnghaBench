#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  objtable; scalar_t__ record_stream; TYPE_1__* record_graphics; int /*<<< orphan*/  hemf; int /*<<< orphan*/  preserve_hemf; int /*<<< orphan*/  record_dc; int /*<<< orphan*/  comment_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  busy; int /*<<< orphan*/ * image; } ;
typedef  TYPE_2__ GpMetafile ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned int) ; 

void FUNC7(GpMetafile *metafile)
{
    unsigned int i;

    FUNC5(metafile->comment_data);
    FUNC2(FUNC1(metafile->record_dc));
    if (!metafile->preserve_hemf)
        FUNC2(metafile->hemf);
    if (metafile->record_graphics)
    {
        FUNC4("metafile closed while recording\n");
        /* not sure what to do here; for now just prevent the graphics from functioning or using this object */
        metafile->record_graphics->image = NULL;
        metafile->record_graphics->busy = TRUE;
    }

    if (metafile->record_stream)
        FUNC3(metafile->record_stream);

    for (i = 0; i < FUNC0(metafile->objtable); i++)
        FUNC6(metafile, i);
}