#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pdb_lookup {int /*<<< orphan*/  filename; } ;
struct pdb_file_info {int dummy; } ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pdb_file_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct pdb_lookup const*,struct pdb_file_info*,char*,unsigned int*) ; 

BOOL FUNC8(const struct pdb_lookup* pdb_lookup, unsigned* matched)
{
    HANDLE              hFile, hMap = NULL;
    char*               image = NULL;
    BOOL                ret;
    struct pdb_file_info pdb_file;

    if ((hFile = FUNC1(pdb_lookup->filename, GENERIC_READ, FILE_SHARE_READ, NULL,
                             OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL)) == INVALID_HANDLE_VALUE ||
        ((hMap = FUNC2(hFile, NULL, PAGE_READONLY, 0, 0, NULL)) == NULL) ||
        ((image = FUNC3(hMap, FILE_MAP_READ, 0, 0, 0)) == NULL))
    {
        FUNC5("Unable to open .PDB file: %s\n", pdb_lookup->filename);
        ret = FALSE;
    }
    else
    {
        ret = FUNC7(pdb_lookup, &pdb_file, image, matched);
        FUNC6(&pdb_file);
    }

    if (image) FUNC4(image);
    if (hMap) FUNC0(hMap);
    if (hFile != INVALID_HANDLE_VALUE) FUNC0(hFile);

    return ret;
}