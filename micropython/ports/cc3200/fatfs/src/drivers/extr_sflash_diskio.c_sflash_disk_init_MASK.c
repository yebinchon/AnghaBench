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
typedef  int /*<<< orphan*/  _i32 ;
typedef  int /*<<< orphan*/  SlFsFileInfo_t ;
typedef  int /*<<< orphan*/  DRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_MODE_OPEN_WRITE ; 
 int /*<<< orphan*/  RES_ERROR ; 
 int /*<<< orphan*/  RES_OK ; 
 int SFLASH_BLOCK_COUNT ; 
 int /*<<< orphan*/  SFLASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  SL_OS_WAIT_FOREVER ; 
 int /*<<< orphan*/  UINT32_MAX ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sflash_block_cache ; 
 int /*<<< orphan*/  sflash_block_name ; 
 int sflash_cache_is_dirty ; 
 int sflash_init_done ; 
 int /*<<< orphan*/  sflash_prblock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sl_FsWrite ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wlan_LockObj ; 

DRESULT FUNC11 (void) {
    _i32 fileHandle;
    SlFsFileInfo_t FsFileInfo;

    if (!sflash_init_done) {
        // Allocate space for the block cache
        FUNC0 ((sflash_block_cache = FUNC2(SFLASH_BLOCK_SIZE)) != NULL);
        sflash_init_done = true;
        sflash_prblock = UINT32_MAX;
        sflash_cache_is_dirty = false;

        // In order too speed up booting, check the last block, if exists, then
        // it means that the file system has been already created
        FUNC4 (SFLASH_BLOCK_COUNT - 1);
        FUNC9 (&wlan_LockObj, SL_OS_WAIT_FOREVER);
        if (!FUNC7(sflash_block_name, 0, &FsFileInfo)) {
            FUNC10 (&wlan_LockObj);
            return RES_OK;
        }
        FUNC10 (&wlan_LockObj);

        // Proceed to format the memory
        for (int i = 0; i < SFLASH_BLOCK_COUNT; i++) {
            FUNC4 (i);
            FUNC9 (&wlan_LockObj, SL_OS_WAIT_FOREVER);
            // Create the block file if it doesn't exist
            if (FUNC7(sflash_block_name, 0, &FsFileInfo) != 0) {
                if (!FUNC8(sflash_block_name, FUNC1(SFLASH_BLOCK_SIZE, 0), NULL, &fileHandle)) {
                    FUNC6(fileHandle, NULL, NULL, 0);
                    FUNC10 (&wlan_LockObj);
                    FUNC3(sflash_block_cache, 0xFF, SFLASH_BLOCK_SIZE);
                    if (!FUNC5(FS_MODE_OPEN_WRITE, sl_FsWrite)) {
                        return RES_ERROR;
                    }
                }
                else {
                    // Unexpected failure while creating the file
                    FUNC10 (&wlan_LockObj);
                    return RES_ERROR;
                }
            }
            FUNC10 (&wlan_LockObj);
        }
    }
    return RES_OK;
}