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
struct TYPE_7__ {scalar_t__ attr; int /*<<< orphan*/  free_fn; int /*<<< orphan*/  size_fn; int /*<<< orphan*/  tell_fn; int /*<<< orphan*/  seek_fn; int /*<<< orphan*/  read_fn; TYPE_2__* mmgr; int /*<<< orphan*/  error; int /*<<< orphan*/  type; int /*<<< orphan*/  sig_bytes; } ;
typedef  int /*<<< orphan*/  HPDF_Stream_Rec ;
typedef  TYPE_1__* HPDF_Stream ;
typedef  TYPE_2__* HPDF_MMgr ;
typedef  scalar_t__ HPDF_FILEP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HPDF_FILE_OPEN_ERROR ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  HPDF_FileReader_ReadFunc ; 
 int /*<<< orphan*/  HPDF_FileReader_SeekFunc ; 
 int /*<<< orphan*/  HPDF_FileStream_FreeFunc ; 
 int /*<<< orphan*/  HPDF_FileStream_SizeFunc ; 
 int /*<<< orphan*/  HPDF_FileStream_TellFunc ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  HPDF_STREAM_FILE ; 
 int /*<<< orphan*/  HPDF_STREAM_SIG_BYTES ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 

HPDF_Stream
FUNC6  (HPDF_MMgr   mmgr,
                      const char  *fname)
{
    HPDF_Stream stream;
    HPDF_FILEP fp = FUNC1 (fname, "rb");

    FUNC4((" HPDF_FileReader_New\n"));

    if (!fp) {
#ifdef UNDER_CE
        HPDF_SetError (mmgr->error, HPDF_FILE_OPEN_ERROR, GetLastError());
#else
        FUNC5 (mmgr->error, HPDF_FILE_OPEN_ERROR, errno);
#endif
        return NULL;
    }

    stream = (HPDF_Stream)FUNC2(mmgr, sizeof(HPDF_Stream_Rec));

    if (stream) {
        FUNC3(stream, 0, sizeof(HPDF_Stream_Rec));
        stream->sig_bytes = HPDF_STREAM_SIG_BYTES;
        stream->type = HPDF_STREAM_FILE;
        stream->error = mmgr->error;
        stream->mmgr = mmgr;
        stream->read_fn = HPDF_FileReader_ReadFunc;
        stream->seek_fn = HPDF_FileReader_SeekFunc;
        stream->tell_fn = HPDF_FileStream_TellFunc;
        stream->size_fn = HPDF_FileStream_SizeFunc;
        stream->free_fn = HPDF_FileStream_FreeFunc;
        stream->attr = fp;
    }

    return stream;
}