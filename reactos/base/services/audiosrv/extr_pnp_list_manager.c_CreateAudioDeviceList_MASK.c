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
struct TYPE_4__ {int size; scalar_t__ device_count; int /*<<< orphan*/  max_size; } ;
typedef  int /*<<< orphan*/  PnP_AudioHeader ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_LIST_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_MAP_WRITE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* audio_device_list ; 
 int /*<<< orphan*/ * device_list_file ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL
FUNC10(DWORD max_size)
{
/*    printf("Initializing memory device list lock\n");*/

    if (!FUNC3())
    {
        /*printf("Failed!\n");*/
        return FALSE;
    }

    /* Preliminary locking - the list memory will likely be a big
       buffer of gibberish at this point so we don't want anyone
       turning up before we're ready... */
    FUNC5();

    FUNC8("Creating file mapping\n");
    /* Expose our device list to the world */
    device_list_file = FUNC1(INVALID_HANDLE_VALUE,
                                          NULL,
                                          PAGE_READWRITE,
                                          0,
                                          max_size,
                                          AUDIO_LIST_NAME);
    if (!device_list_file)
    {
        FUNC8("Creation of audio device list failed (err %d)\n", FUNC2());

        FUNC7();
        FUNC4();

        return FALSE;
    }

    FUNC8("Mapping view of file\n");
    /* Of course, we'll need to access the list ourselves */
    audio_device_list = FUNC6(device_list_file,
                                      FILE_MAP_WRITE,
                                      0,
                                      0,
                                      max_size);
    if (!audio_device_list)
    {
        FUNC8("MapViewOfFile FAILED (err %d)\n", FUNC2());

        FUNC0(device_list_file);
        device_list_file = NULL;

        FUNC7();
        FUNC4();

        return FALSE;
    }

    /* Clear the mem to avoid any random stray data */
    FUNC9(audio_device_list, 0, max_size);

    /* Don't want devices to overwrite the list! */
    audio_device_list->size = sizeof(PnP_AudioHeader);
    audio_device_list->max_size = max_size;
    audio_device_list->device_count = 0;

    FUNC7();

    FUNC8("Device list created\n");

    return TRUE;
}