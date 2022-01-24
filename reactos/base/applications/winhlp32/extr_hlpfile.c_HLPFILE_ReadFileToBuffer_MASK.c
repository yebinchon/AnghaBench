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
struct TYPE_3__ {int file_buffer_size; char* file_buffer; } ;
typedef  TYPE_1__ HLPFILE ;
typedef  int /*<<< orphan*/  HFILE ;
typedef  char BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static BOOL FUNC6(HLPFILE* hlpfile, HFILE hFile)
{
    BYTE  header[16], dummy[1];

    if (FUNC4(hFile, header, 16) != 16) {FUNC3("header\n"); return FALSE;};

    /* sanity checks */
    if (FUNC0(header, 0) != 0x00035F3F)
    {FUNC3("wrong header\n"); return FALSE;};

    hlpfile->file_buffer_size = FUNC0(header, 12);
    hlpfile->file_buffer = FUNC2(FUNC1(), 0, hlpfile->file_buffer_size + 1);
    if (!hlpfile->file_buffer) return FALSE;

    FUNC5(hlpfile->file_buffer, header, 16);
    if (FUNC4(hFile, hlpfile->file_buffer + 16, hlpfile->file_buffer_size - 16) !=hlpfile->file_buffer_size - 16)
    {FUNC3("filesize1\n"); return FALSE;};

    if (FUNC4(hFile, dummy, 1) != 0) FUNC3("filesize2\n");

    hlpfile->file_buffer[hlpfile->file_buffer_size] = '\0'; /* FIXME: was '0', sounds backwards to me */

    return TRUE;
}