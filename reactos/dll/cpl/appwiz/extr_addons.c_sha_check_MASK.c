#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sha ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_2__ {int /*<<< orphan*/  sha; } ;
typedef  int /*<<< orphan*/  SHA_CTX ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_READONLY ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 unsigned char* FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* addon ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,unsigned char) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC12(const WCHAR *file_name)
{
    const unsigned char *file_map;
    HANDLE file, map;
    ULONG sha[5];
    char buf[2*sizeof(sha)+1];
    SHA_CTX ctx;
    DWORD size, i;

    file = FUNC5(file_name, GENERIC_READ, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_READONLY, NULL);
    if(file == INVALID_HANDLE_VALUE)
        return FALSE;

    size = FUNC6(file, NULL);

    map = FUNC4(file, NULL, PAGE_READONLY, 0, 0, NULL);
    FUNC3(file);
    if(!map)
        return FALSE;

    file_map = FUNC7(map, FILE_MAP_READ, 0, 0, 0);
    FUNC3(map);
    if(!file_map)
        return FALSE;

    FUNC1(&ctx);
    FUNC2(&ctx, file_map, size);
    FUNC0(&ctx, sha);

    FUNC8(file_map);

    for(i=0; i < sizeof(sha); i++)
        FUNC10(buf + i*2, "%02x", *((unsigned char*)sha+i));

    if(FUNC11(buf, addon->sha)) {
        FUNC9("Got %s, expected %s\n", buf, addon->sha);
        return FALSE;
    }

    return TRUE;
}