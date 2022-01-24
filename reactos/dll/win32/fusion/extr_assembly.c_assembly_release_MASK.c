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
struct TYPE_4__ {int /*<<< orphan*/  hfile; int /*<<< orphan*/  hmap; int /*<<< orphan*/  data; struct TYPE_4__* path; struct TYPE_4__* metadatahdr; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ ASSEMBLY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

HRESULT FUNC3(ASSEMBLY *assembly)
{
    if (!assembly)
        return S_OK;

    FUNC2(assembly->metadatahdr);
    FUNC2(assembly->path);
    FUNC1(assembly->data);
    FUNC0(assembly->hmap);
    FUNC0(assembly->hfile);
    FUNC2(assembly);

    return S_OK;
}