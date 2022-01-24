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
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  HPDF_UINT32 ;
typedef  TYPE_1__* HPDF_Stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

HPDF_UINT32
FUNC1  (HPDF_Stream  stream)
{
    FUNC0((" HPDF_MemStream_SizeFunc\n"));

    return stream->size;
}