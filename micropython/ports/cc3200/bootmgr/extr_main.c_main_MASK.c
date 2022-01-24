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
struct TYPE_3__ {int /*<<< orphan*/  PrevImg; int /*<<< orphan*/  Status; int /*<<< orphan*/  ActiveImg; } ;
typedef  TYPE_1__ sBootInfo_t ;
typedef  int _u32 ;
typedef  int /*<<< orphan*/  _i32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FS_MODE_OPEN_READ ; 
 int /*<<< orphan*/  IMG_ACT_FACTORY ; 
 scalar_t__ IMG_BOOT_INFO ; 
 int /*<<< orphan*/  IMG_STATUS_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MICROPY_SYS_LED_PORT ; 
 int /*<<< orphan*/  MICROPY_SYS_LED_PORT_PIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRCM_FIRST_BOOT_BIT ; 
 int /*<<< orphan*/  SL_STOP_TIMEOUT ; 
 int _FS_FILE_OPEN_FLAG_COMMIT ; 
 int _FS_FILE_PUBLIC_READ ; 
 int _FS_FILE_PUBLIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11 (void) {
    sBootInfo_t sBootInfo = { .ActiveImg = IMG_ACT_FACTORY, .Status = IMG_STATUS_READY, .PrevImg = IMG_ACT_FACTORY };
    bool bootapp = false;
    _i32 fhandle;

    // board setup
    FUNC3();

    // start simplelink since we need it to access the sflash
    FUNC9(0, 0, 0);

    // if a boot info file is found, load it, else, create a new one with the default boot info
    if (!FUNC6((unsigned char *)IMG_BOOT_INFO, FS_MODE_OPEN_READ, NULL, &fhandle)) {
        if (sizeof(sBootInfo_t) == FUNC7(fhandle, 0, (unsigned char *)&sBootInfo, sizeof(sBootInfo_t))) {
            bootapp = true;
        }
        FUNC5(fhandle, 0, 0, 0);
    }
    // boot info file not present, it means that this is the first boot after being programmed
    if (!bootapp) {
        // create a new boot info file
        _u32 BootInfoCreateFlag  = _FS_FILE_OPEN_FLAG_COMMIT | _FS_FILE_PUBLIC_WRITE | _FS_FILE_PUBLIC_READ;
        if (!FUNC6 ((unsigned char *)IMG_BOOT_INFO, FUNC0((2 * sizeof(sBootInfo_t)),
                        BootInfoCreateFlag), NULL, &fhandle)) {
            // write the default boot info.
            if (sizeof(sBootInfo_t) == FUNC8(fhandle, 0, (unsigned char *)&sBootInfo, sizeof(sBootInfo_t))) {
                bootapp = true;
            }
            FUNC5(fhandle, 0, 0, 0);
        }
        // signal the first boot to the application
        FUNC2(PRCM_FIRST_BOOT_BIT);
    }

    if (bootapp) {
        // load and execute the image based on the boot info
        FUNC4(&sBootInfo);
    }

    // stop simplelink
    FUNC10(SL_STOP_TIMEOUT);

    // if we've reached this point, then it means that a fatal error has occurred and the
    // application could not be loaded, so, loop forever and signal the crash to the user
    while (true) {
        // keep the bld on
        FUNC1(MICROPY_SYS_LED_PORT, MICROPY_SYS_LED_PORT_PIN, MICROPY_SYS_LED_PORT_PIN);
        __asm volatile(" dsb \n"
                       " isb \n"
                       " wfi \n");
    }
}