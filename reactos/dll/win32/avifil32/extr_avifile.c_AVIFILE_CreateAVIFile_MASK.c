#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_12__ {int ref; TYPE_3__ IUnknown_inner; TYPE_3__* outer_unk; TYPE_2__ IPersistFile_iface; TYPE_1__ IAVIFile_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  TYPE_3__ IUnknown ;
typedef  TYPE_4__ IAVIFileImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  AVIERR_MEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  avif_vt ; 
 int /*<<< orphan*/  pf_vt ; 
 int /*<<< orphan*/  unk_vtbl ; 

HRESULT FUNC4(IUnknown *pUnkOuter, REFIID riid, void **ppv)
{
  IAVIFileImpl *obj;
  HRESULT hr;

  *ppv = NULL;
  obj = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(IAVIFileImpl));
  if (!obj)
    return AVIERR_MEMORY;

  obj->IUnknown_inner.lpVtbl = &unk_vtbl;
  obj->IAVIFile_iface.lpVtbl = &avif_vt;
  obj->IPersistFile_iface.lpVtbl = &pf_vt;
  obj->ref = 1;
  if (pUnkOuter)
    obj->outer_unk = pUnkOuter;
  else
    obj->outer_unk = &obj->IUnknown_inner;

  hr = FUNC2(&obj->IUnknown_inner, riid, ppv);
  FUNC3(&obj->IUnknown_inner);

  return hr;
}