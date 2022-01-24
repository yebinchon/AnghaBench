#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  error; } ;
struct TYPE_7__ {int /*<<< orphan*/  type; void* attr; int /*<<< orphan*/  write_fn; TYPE_2__* mmgr; int /*<<< orphan*/  error; int /*<<< orphan*/  sig_bytes; } ;
typedef  int /*<<< orphan*/  HPDF_Stream_Write_Func ;
typedef  int /*<<< orphan*/  HPDF_Stream_Rec ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  TYPE_2__* HPDF_MMgr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  HPDF_STREAM_CALLBACK ; 
 int /*<<< orphan*/  HPDF_STREAM_SIG_BYTES ; 

HPDF_Stream
FUNC3 (HPDF_MMgr               mmgr,
                         HPDF_Stream_Write_Func  write_fn,
                         void*                   data)
{
    HPDF_Stream stream;

    FUNC2((" HPDF_CallbackWriter_New\n"));

    stream = (HPDF_Stream)FUNC0 (mmgr, sizeof(HPDF_Stream_Rec));

    if (stream) {
        FUNC1 (stream, 0, sizeof(HPDF_Stream_Rec));
        stream->sig_bytes = HPDF_STREAM_SIG_BYTES;
        stream->error = mmgr->error;
        stream->mmgr = mmgr;
        stream->write_fn = write_fn;
        stream->attr = data;
        stream->type = HPDF_STREAM_CALLBACK;
    }

    return stream;
}