#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mp_log {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pwszVal; } ;
typedef  TYPE_1__ PROPVARIANT ;
typedef  int /*<<< orphan*/  IPropertyStore ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STGM_READ ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_PKEY_Device_FriendlyName ; 
 char* FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mp_log*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (void*,char*) ; 

__attribute__((used)) static char* FUNC11(struct mp_log *l, void *talloc_ctx, IMMDevice *pDevice)
{
    char *namestr = NULL;
    IPropertyStore *pProps = NULL;
    PROPVARIANT devname;
    FUNC5(&devname);

    HRESULT hr = FUNC2(pDevice, STGM_READ, &pProps);
    FUNC0(hr);

    hr = FUNC3(pProps, &mp_PKEY_Device_FriendlyName,
                                 &devname);
    FUNC0(hr);

    namestr = FUNC8(talloc_ctx, devname.pwszVal);

exit_label:
    if (FUNC1(hr))
        FUNC9(l, "Failed getting device name: %s\n", FUNC7(hr));
    FUNC4(&devname);
    FUNC6(pProps);
    return namestr ? namestr : FUNC10(talloc_ctx, "");
}