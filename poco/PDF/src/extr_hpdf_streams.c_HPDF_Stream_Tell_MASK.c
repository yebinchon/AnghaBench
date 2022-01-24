#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* tell_fn ) (TYPE_1__*) ;int /*<<< orphan*/  error; } ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_INT32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_INVALID_OPERATION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_THIS_FUNC_WAS_SKIPPED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

HPDF_INT32
FUNC4  (HPDF_Stream  stream)
{
    FUNC1((" HPDF_Stream_Tell\n"));

    if (!(stream->tell_fn))
        return FUNC2 (stream->error, HPDF_INVALID_OPERATION, 0);

    if (FUNC0(stream->error) != 0)
        return HPDF_THIS_FUNC_WAS_SKIPPED;

    return stream->tell_fn(stream);
}