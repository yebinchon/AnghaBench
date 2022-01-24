#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inf_file {int size; void* content; int /*<<< orphan*/  sections; } ;
struct TYPE_3__ {int QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct inf_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct inf_file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

HRESULT FUNC9(const char *path, struct inf_file **inf_file)
{
    LARGE_INTEGER file_size;
    struct inf_file *inf;
    HRESULT hr = E_FAIL;
    HANDLE file;
    DWORD read;

    file = FUNC1(path, GENERIC_READ, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (file == INVALID_HANDLE_VALUE) return E_FAIL;

    inf = FUNC5(sizeof(*inf));
    if (!inf) goto error;

    if (!FUNC3(file, &file_size))
        goto error;

    inf->size = file_size.QuadPart;

    inf->content = FUNC5(inf->size);
    if (!inf->content) goto error;

    FUNC8(&inf->sections);

    if (!FUNC4(file, inf->content, inf->size, &read, NULL) || read != inf->size)
        goto error;

    hr = FUNC7(inf);
    if (FUNC2(hr)) goto error;

    FUNC0(file);
    *inf_file = inf;
    return S_OK;

error:
    if (inf) FUNC6(inf);
    FUNC0(file);
    return hr;
}