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
struct resource_dir_entry {int /*<<< orphan*/  children; void* id; } ;
struct resource_data {int /*<<< orphan*/  entry; } ;
struct TYPE_4__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ QUEUEDUPDATES ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LANGID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct resource_dir_entry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource_data*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct resource_dir_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct resource_data* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct resource_dir_entry* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC12( QUEUEDUPDATES *updates, LPCWSTR Type, LPCWSTR Name,
                                 LANGID Lang, struct resource_data *resdata,
                                 BOOL overwrite_existing )
{
    struct resource_dir_entry *restype, *resname;
    struct resource_data *existing;

    FUNC3("%p %s %s %p %d\n", updates,
          FUNC6(Type), FUNC6(Name), resdata, overwrite_existing );

    restype = FUNC8( &updates->root, Type );
    if (!restype)
    {
        restype = FUNC1( FUNC0(), 0, sizeof *restype );
        restype->id = FUNC11( Type );
        FUNC9( &restype->children );
        FUNC5( &updates->root, restype );
    }

    resname = FUNC8( &restype->children, Name );
    if (!resname)
    {
        resname = FUNC1( FUNC0(), 0, sizeof *resname );
        resname->id = FUNC11( Name );
        FUNC9( &resname->children );
        FUNC5( &restype->children, resname );
    }

    /*
     * If there's an existing resource entry with matching (Type,Name,Language)
     *  it needs to be removed before adding the new data.
     */
    existing = FUNC7( &resname->children, Lang );
    if (existing)
    {
        if (!overwrite_existing)
            return FALSE;
        FUNC10( &existing->entry );
        FUNC2( FUNC0(), 0, existing );
    }

    if (resdata)
        FUNC4( &resname->children, resdata );

    return TRUE;
}