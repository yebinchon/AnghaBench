#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  t_PXENV_TFTP_CLOSE ;
typedef  int /*<<< orphan*/  closeData ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  ARC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ESUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ NO_FILE ; 
 int /*<<< orphan*/  PXENV_TFTP_CLOSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TAG_PXE_FILE ; 
 int /*<<< orphan*/ * _CachedFile ; 
 scalar_t__ _OpenFile ; 

__attribute__((used)) static ARC_STATUS FUNC3(ULONG FileId)
{
    t_PXENV_TFTP_CLOSE closeData;

    if (_OpenFile == NO_FILE || FileId != _OpenFile)
        return EBADF;

    FUNC2(&closeData, sizeof(closeData));
    if (!FUNC0(PXENV_TFTP_CLOSE, &closeData))
        return EIO;

    _OpenFile = NO_FILE;
    if (_CachedFile)
    {
        FUNC1(_CachedFile, TAG_PXE_FILE);
        _CachedFile = NULL;
    }
    return ESUCCESS;
}