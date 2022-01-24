#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource_data {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  CodePage; int /*<<< orphan*/  OffsetToData; } ;
struct TYPE_8__ {scalar_t__ NumberOfNamedEntries; scalar_t__ NumberOfIdEntries; int /*<<< orphan*/  MinorVersion; int /*<<< orphan*/  MajorVersion; } ;
struct TYPE_7__ {int OffsetToDirectory; int OffsetToData; int /*<<< orphan*/  Id; } ;
typedef  int /*<<< orphan*/  QUEUEDUPDATES ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LANGID ;
typedef  TYPE_1__ IMAGE_RESOURCE_DIRECTORY_ENTRY ;
typedef  TYPE_2__ IMAGE_RESOURCE_DIRECTORY ;
typedef  TYPE_3__ IMAGE_RESOURCE_DATA_ENTRY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC3 (void*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource_data* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC8( QUEUEDUPDATES *updates,
                             void *base, DWORD mapping_size,
                             const IMAGE_RESOURCE_DIRECTORY *root )
{
    const IMAGE_RESOURCE_DIRECTORY *namedir, *langdir;
    const IMAGE_RESOURCE_DIRECTORY_ENTRY *e1, *e2, *e3;
    const IMAGE_RESOURCE_DATA_ENTRY *data;
    DWORD i, j, k;

    FUNC2("version (%d.%d) %d named %d id entries\n",
          root->MajorVersion, root->MinorVersion, root->NumberOfNamedEntries, root->NumberOfIdEntries);

    for (i = 0; i< root->NumberOfNamedEntries + root->NumberOfIdEntries; i++)
    {
        LPWSTR Type;

        e1 = (const IMAGE_RESOURCE_DIRECTORY_ENTRY*)(root + 1) + i;

        Type = FUNC6( root, e1 );

        namedir = (const IMAGE_RESOURCE_DIRECTORY *)((const char *)root + e1->OffsetToDirectory);
        for (j = 0; j < namedir->NumberOfNamedEntries + namedir->NumberOfIdEntries; j++)
        {
            LPWSTR Name;

            e2 = (const IMAGE_RESOURCE_DIRECTORY_ENTRY*)(namedir + 1) + j;

            Name = FUNC6( root, e2 );

            langdir = (const IMAGE_RESOURCE_DIRECTORY *)((const char *)root + e2->OffsetToDirectory);
            for (k = 0; k < langdir->NumberOfNamedEntries + langdir->NumberOfIdEntries; k++)
            {
                LANGID Lang;
                void *p;
                struct resource_data *resdata;

                e3 = (const IMAGE_RESOURCE_DIRECTORY_ENTRY*)(langdir + 1) + k;

                Lang = e3->Id;

                data = (const IMAGE_RESOURCE_DATA_ENTRY *)((const char *)root + e3->OffsetToData);

                p = FUNC3( base, mapping_size, data->OffsetToData, data->Size );

                resdata = FUNC4( Lang, data->CodePage, p, data->Size, FALSE );
                if (resdata)
                {
                    if (!FUNC7( updates, Type, Name, Lang, resdata, FALSE ))
                        FUNC1( FUNC0(), 0, resdata );
                }
            }
            FUNC5( Name );
        }
        FUNC5( Type );
    }

    return TRUE;
}