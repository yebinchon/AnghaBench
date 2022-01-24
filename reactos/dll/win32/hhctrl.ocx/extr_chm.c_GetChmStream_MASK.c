#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * pStorage; int /*<<< orphan*/  pITStorage; } ;
struct TYPE_5__ {scalar_t__ chm_index; scalar_t__ chm_file; } ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ ChmPath ;
typedef  TYPE_2__ CHMInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int STGM_READ ; 
 int STGM_SHARE_DENY_WRITE ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

IStream *FUNC8(CHMInfo *info, LPCWSTR parent_chm, ChmPath *chm_file)
{
    IStorage *storage;
    IStream *stream = NULL;
    HRESULT hres;

    FUNC5("%s (%s :: %s)\n", FUNC7(parent_chm), FUNC7(chm_file->chm_file),
          FUNC7(chm_file->chm_index));

    if(parent_chm || chm_file->chm_file) {
        hres = FUNC1(info->pITStorage,
                chm_file->chm_file ? chm_file->chm_file : parent_chm, NULL,
                STGM_READ | STGM_SHARE_DENY_WRITE, NULL, 0, &storage);
        if(FUNC0(hres)) {
            FUNC6("Could not open storage: %08x\n", hres);
            return NULL;
        }
    }else {
        storage = info->pStorage;
        FUNC2(info->pStorage);
    }

    hres = FUNC3(storage, chm_file->chm_index, NULL, STGM_READ, 0, &stream);
    FUNC4(storage);
    if(FUNC0(hres))
        FUNC6("Could not open stream: %08x\n", hres);

    return stream;
}