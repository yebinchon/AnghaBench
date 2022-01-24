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
struct TYPE_3__ {int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_Real ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HPDF_STATUS
FUNC1  (HPDF_Real    obj,
                  HPDF_Stream  stream)
{
    return FUNC0 (stream, obj->value);
}