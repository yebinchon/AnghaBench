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
struct inf_file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * lpVtbl; } ;
struct ciffile {int ref; TYPE_1__ ICifFile_iface; int /*<<< orphan*/  groups; int /*<<< orphan*/  components; } ;
typedef  TYPE_1__ ICifFile ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  ciffileVtbl ; 
 struct ciffile* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inf_file*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct inf_file**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ciffile*,struct inf_file*) ; 

__attribute__((used)) static HRESULT FUNC7(const char *path, ICifFile **icif)
{
    struct inf_file *inf = NULL;
    struct ciffile *file;
    HRESULT hr = E_FAIL;

    file = FUNC2(sizeof(*file));
    if(!file) return E_OUTOFMEMORY;

    file->ICifFile_iface.lpVtbl = &ciffileVtbl;
    file->ref = 1;

    FUNC5(&file->components);
    FUNC5(&file->groups);

    hr = FUNC4(path, &inf);
    if (FUNC0(hr)) goto error;

    hr = FUNC6(file, inf);
    if (FUNC0(hr)) goto error;

    *icif = &file->ICifFile_iface;
    return S_OK;

error:
    if (inf) FUNC3(inf);
    FUNC1(&file->ICifFile_iface);
    return hr;
}