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
struct enumerator {int /*<<< orphan*/  log; int /*<<< orphan*/  pEnumerator; } ;
struct device_desc {int dummy; } ;
typedef  int /*<<< orphan*/  IMMDevice ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (struct enumerator*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eMultimedia ; 
 int /*<<< orphan*/  eRender ; 
 struct device_desc* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct device_desc *FUNC6(struct enumerator *e)
{
    IMMDevice *pDevice = NULL;
    HRESULT hr = FUNC1(
        e->pEnumerator, eRender, eMultimedia, &pDevice);
    if (FUNC0(hr)) {
        FUNC2(e, "Error from GetDefaultAudioEndpoint: %s\n",
               FUNC5(hr));
        return NULL;
    }
    struct device_desc *d = FUNC4(e->log, pDevice);
    FUNC3(pDevice);
    return d;
}