#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_3__ IAVIStream_iface; TYPE_1__ IAVIEditStream_iface; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  IAVIStream ;
typedef  TYPE_2__ IAVIEditStreamImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ieditstast ; 
 int /*<<< orphan*/  ieditstream ; 

__attribute__((used)) static IAVIEditStreamImpl *FUNC3(IAVIStream *pstream)
{
  IAVIEditStreamImpl *pedit = NULL;

  pedit = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(IAVIEditStreamImpl));
  if (pedit == NULL)
    return NULL;

  pedit->IAVIEditStream_iface.lpVtbl = &ieditstream;
  pedit->IAVIStream_iface.lpVtbl = &ieditstast;
  pedit->ref = 1;

  FUNC2(&pedit->IAVIStream_iface, (LPARAM)pstream, 0);

  return pedit;
}