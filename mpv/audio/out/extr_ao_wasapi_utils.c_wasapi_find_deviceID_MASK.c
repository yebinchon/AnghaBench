#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct enumerator {long long count; } ;
struct device_desc {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct ao {int /*<<< orphan*/  log; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ bstr ;
typedef  long long UINT ;
typedef  int /*<<< orphan*/ * LPWSTR ;

/* Variables and functions */
 long long FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (struct ao*,char*,long long) ; 
 int /*<<< orphan*/  FUNC2 (struct ao*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ao*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ao*,char*,long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__,int /*<<< orphan*/ ) ; 
 long long FUNC10 (TYPE_1__,TYPE_1__*,int) ; 
 struct enumerator* FUNC11 (int /*<<< orphan*/ ) ; 
 struct device_desc* FUNC12 (struct enumerator*) ; 
 int /*<<< orphan*/  FUNC13 (struct enumerator*) ; 
 struct device_desc* FUNC14 (struct enumerator*,long long) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,struct device_desc*) ; 
 int /*<<< orphan*/  FUNC16 (struct device_desc*) ; 
 TYPE_1__ FUNC17 (struct ao*) ; 

LPWSTR FUNC18(struct ao *ao)
{
    LPWSTR deviceID = NULL;
    bstr device = FUNC17(ao);
    FUNC1(ao, "Find device \'%.*s\'\n", FUNC0(device));

    struct device_desc *d = NULL;
    struct enumerator *enumerator = FUNC11(ao->log);
    if (!enumerator)
        goto exit_label;

    if (!enumerator->count) {
        FUNC2(ao, "There are no playback devices available\n");
        goto exit_label;
    }

    if (!device.len) {
        FUNC3(ao, "No device specified. Selecting default.\n");
        d = FUNC12(enumerator);
        deviceID = FUNC15(ao->log, d);
        goto exit_label;
    }

    // try selecting by number
    bstr rest;
    long long devno = FUNC10(device, &rest, 10);
    if (!rest.len && 0 <= devno && devno < (long long)enumerator->count) {
        FUNC3(ao, "Selecting device by number: #%lld\n", devno);
        d = FUNC14(enumerator, devno);
        deviceID = FUNC15(ao->log, d);
        goto exit_label;
    }

    // select by id or name
    FUNC7(&device, "{0.0.0.00000000}.");
    for (UINT i = 0; i < enumerator->count; i++) {
        d = FUNC14(enumerator, i);
        if (!d)
            goto exit_label;

        if (FUNC9(device, FUNC8(FUNC6(d->id))) == 0) {
            FUNC3(ao, "Selecting device by id: \'%.*s\'\n", FUNC0(device));
            deviceID = FUNC15(ao->log, d);
            goto exit_label;
        }

        if (FUNC9(device, FUNC8(FUNC6(d->name))) == 0) {
            if (!deviceID) {
                FUNC3(ao, "Selecting device by name: \'%.*s\'\n", FUNC0(device));
                deviceID = FUNC15(ao->log, d);
            } else {
                FUNC4(ao, "Multiple devices matched \'%.*s\'."
                        "Ignoring device \'%s\' (%s).\n",
                        FUNC0(device), d->id, d->name);
            }
        }
        FUNC5(d, FUNC16(d));
    }

    if (!deviceID)
        FUNC2(ao, "Failed to find device \'%.*s\'\n", FUNC0(device));

exit_label:
    FUNC16(d);
    FUNC13(enumerator);
    return deviceID;
}