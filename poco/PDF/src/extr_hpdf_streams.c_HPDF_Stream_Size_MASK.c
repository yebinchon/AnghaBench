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
struct TYPE_4__ {int /*<<< orphan*/  (* size_fn ) (TYPE_1__*) ;int /*<<< orphan*/  error; int /*<<< orphan*/  size; scalar_t__ write_fn; } ;
typedef  int /*<<< orphan*/  HPDF_UINT32 ;
typedef  TYPE_1__* HPDF_Stream ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HPDF_INVALID_OPERATION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

HPDF_UINT32
FUNC4  (HPDF_Stream  stream)
{
    FUNC1((" HPDF_Stream_Tell\n"));

    if (stream->write_fn)
        return stream->size;

    if (!(stream->size_fn)) {
        FUNC2 (stream->error, HPDF_INVALID_OPERATION, 0);
        return 0;
    }

    if (FUNC0(stream->error) != 0)
        return 0;

    return stream->size_fn(stream);
}