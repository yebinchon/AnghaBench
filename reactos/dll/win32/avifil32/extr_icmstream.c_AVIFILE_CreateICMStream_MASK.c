#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {TYPE_2__ IAVIStream_iface; } ;
typedef  int /*<<< orphan*/ * REFIID ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  TYPE_1__ IAVIStreamImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  iicmst ; 

HRESULT FUNC7(REFIID riid, LPVOID *ppv)
{
  IAVIStreamImpl *pstream;
  HRESULT         hr;

  FUNC6(riid != NULL && ppv != NULL);

  *ppv = NULL;

  pstream = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(IAVIStreamImpl));
  if (pstream == NULL)
    return AVIERR_MEMORY;

  pstream->IAVIStream_iface.lpVtbl = &iicmst;
  FUNC0(pstream);

  hr = FUNC5(&pstream->IAVIStream_iface, riid, ppv);
  if (FUNC1(hr))
    FUNC4(FUNC2(), 0, pstream);

  return hr;
}