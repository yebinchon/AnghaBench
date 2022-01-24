#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gdImagePtr ;
struct TYPE_5__ {int /*<<< orphan*/  (* gd_free ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ gdIOCtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3 (gdImagePtr im, FILE * outFile)
{
  gdIOCtx *out = FUNC1 (outFile);
  FUNC0 (im, out);
  out->gd_free (out);
}