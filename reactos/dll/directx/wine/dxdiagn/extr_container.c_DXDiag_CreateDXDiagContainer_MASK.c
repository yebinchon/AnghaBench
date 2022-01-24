#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_4__ {TYPE_2__ IDxDiagContainer_iface; int /*<<< orphan*/ * pProv; int /*<<< orphan*/ * cont; scalar_t__ ref; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  IDxDiagProvider ;
typedef  int /*<<< orphan*/  IDxDiagContainerImpl_Container ;
typedef  TYPE_1__ IDxDiagContainerImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DxDiagContainer_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

HRESULT FUNC6(REFIID riid, IDxDiagContainerImpl_Container *cont, IDxDiagProvider *pProv, LPVOID *ppobj) {
  IDxDiagContainerImpl* container;

  FUNC4("(%s, %p)\n", FUNC5(riid), ppobj);

  container = FUNC1(FUNC0(), 0, sizeof(IDxDiagContainerImpl));
  if (NULL == container) {
    *ppobj = NULL;
    return E_OUTOFMEMORY;
  }
  container->IDxDiagContainer_iface.lpVtbl = &DxDiagContainer_Vtbl;
  container->ref = 0; /* will be inited with QueryInterface */
  container->cont = cont;
  container->pProv = pProv;
  FUNC3(pProv);
  return FUNC2(&container->IDxDiagContainer_iface, riid, ppobj);
}