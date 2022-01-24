#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  trailer; TYPE_1__* prev; scalar_t__ start_offset; TYPE_2__* entries; } ;
struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
typedef  TYPE_3__* HPDF_Xref ;
typedef  scalar_t__ HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HPDF_STATUS
FUNC5  (HPDF_Xref     xref,
               HPDF_Stream   stream)
{
    HPDF_UINT max_obj_id = xref->entries->count + xref->start_offset;
    HPDF_STATUS ret;

    FUNC2 ((" WriteTrailer\n"));

    if ((ret = FUNC0 (xref->trailer, "Size", max_obj_id))
            != HPDF_OK)
        return ret;

    if (xref->prev)
        if ((ret = FUNC0 (xref->trailer, "Prev",
                xref->prev->addr)) != HPDF_OK)
            return ret;

    if ((ret = FUNC3 (stream, "trailer\012")) != HPDF_OK)
        return ret;

    if ((ret = FUNC1 (xref->trailer, stream, NULL)) != HPDF_OK)
        return ret;

    if ((ret = FUNC3 (stream, "\012startxref\012")) != HPDF_OK)
        return ret;

    if ((ret = FUNC4 (stream, xref->addr)) != HPDF_OK)
        return ret;

    if ((ret = FUNC3 (stream, "\012%%EOF\012")) != HPDF_OK)
        return ret;

    return HPDF_OK;
}