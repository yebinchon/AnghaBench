#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ USHORT ;
struct TYPE_12__ {scalar_t__ Length; } ;
typedef  TYPE_1__ UNICODE_STRING ;
struct TYPE_13__ {int /*<<< orphan*/ * Buffer; scalar_t__ Length; scalar_t__ MaximumLength; } ;
typedef  TYPE_2__* PUNICODE_STRING ;
typedef  int /*<<< orphan*/  PHANDLE ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOL ;
typedef  int ACCESS_MASK ;

/* Variables and functions */
 int /*<<< orphan*/ * APPCOMPAT_LAYER_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  REGISTRY_MACHINE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 () ; 

NTSTATUS FUNC13(PUNICODE_STRING FullPath, BOOL bMachine, ACCESS_MASK Access, PHANDLE KeyHandle)
{
    UNICODE_STRING BasePath;
    const WCHAR* LayersKey = APPCOMPAT_LAYER_KEY;
    OBJECT_ATTRIBUTES ObjectLayer = FUNC2(FullPath, OBJ_CASE_INSENSITIVE);
    NTSTATUS Status;
    FullPath->Buffer = NULL;
    FullPath->Length = FullPath->MaximumLength = 0;
    if (bMachine)
    {
        FUNC7(&BasePath, REGISTRY_MACHINE);
    }
    else
    {
        Status = FUNC5(&BasePath);
        if (!FUNC0(Status))
        {
            FUNC8("Unable to acquire user registry key, Error: 0x%lx\n", Status);
            return Status;
        }
    }
    FullPath->MaximumLength = (USHORT)(BasePath.Length + FUNC11(LayersKey));
    FullPath->Buffer = FUNC9(FullPath->MaximumLength);
    FullPath->Length = 0;
    FUNC3(FullPath, &BasePath);
    if (!bMachine)
        FUNC6(&BasePath);
    FUNC4(FullPath, LayersKey);

    Status = FUNC1(KeyHandle, Access | FUNC12(), &ObjectLayer);
    if (!FUNC0(Status))
    {
        FUNC8("Unable to open Key  \"%wZ\" Status 0x%lx\n", FullPath, Status);
        FUNC10(FullPath->Buffer);
        FullPath->Buffer = NULL;
    }
    return Status;
}