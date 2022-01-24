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
struct TYPE_7__ {int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {int /*<<< orphan*/ * attr; int /*<<< orphan*/  mmgr; } ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  TYPE_2__* HPDF_MemStreamAttr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4  (HPDF_Stream  stream)
{
    HPDF_MemStreamAttr attr;

    FUNC3((" HPDF_MemStream_FreeFunc\n"));

    attr = (HPDF_MemStreamAttr)stream->attr;
    FUNC2 (stream);
    FUNC1 (attr->buf);
    FUNC0 (stream->mmgr, attr);
    stream->attr = NULL;
}