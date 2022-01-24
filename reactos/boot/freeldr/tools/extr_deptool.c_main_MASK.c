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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ERROR_DEPENDFILENOTFOUND ; 
 int ERROR_NOTENOUGHPARAMS ; 
 int ERROR_OUTOFMEMORY ; 
 int ERROR_READERROR ; 
 int ERROR_SUCCESS ; 
 int ERROR_WRITEERROR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 

int FUNC14(int argc, char *argv[])
{
    FILE*    DependFile;
    int        DependFileSize;
    char*    DependFileData;
    char*    NewDependFileData;
    int        CurIdx;
    int        CurIdx2;
    int        RuleDependencySplit = 0;

    // Make sure they passed enough command line parameters
    if (argc < 2)
    {
        FUNC10("Usage: deptool srcfile.d\n");
        return ERROR_NOTENOUGHPARAMS;
    }

    // Try to open the dependency file
    DependFile = FUNC2(argv[1], "r+t");
    if (DependFile == NULL)
    {
        FUNC10("deptool: No such dependency file: %s\n", argv[1]);
        return ERROR_DEPENDFILENOTFOUND;
    }

    // Get the file size
    FUNC5(DependFile, 0, SEEK_END);
    DependFileSize = FUNC6(DependFile);
    FUNC11(DependFile);

    // Allocate memory
    DependFileData = (char *)FUNC8(DependFileSize);
    NewDependFileData = (char *)FUNC8(DependFileSize * 3);
    if (!DependFileData || !NewDependFileData)
    {
        FUNC10("deptool: Out of memory!\n");
        if (DependFileData != NULL)
            FUNC4(DependFileData);
        if (NewDependFileData != NULL)
            FUNC4(NewDependFileData);
        FUNC0(DependFile);
        return ERROR_OUTOFMEMORY;
    }
    FUNC9(DependFileData, 0, DependFileSize);
    FUNC9(NewDependFileData, 0, DependFileSize * 3);

    // Read in file data
    FUNC3(DependFileData, 1, DependFileSize, DependFile);
    if (FUNC1(DependFile))
    {
        FUNC10("deptool: Dependency file read error.\n");
        FUNC4(DependFileData);
        FUNC4(NewDependFileData);
        FUNC0(DependFile);
        return ERROR_READERROR;
    }

    // Loop through the dependency file data and
    // insert the rule for the dependency file itself
    for (CurIdx=0,CurIdx2=0; DependFileData[CurIdx]; CurIdx++,CurIdx2++)
    {
        // Find the first colon ':' in the file and insert
        // the rule right before it
        if (DependFileData[CurIdx] == ':')
        {
            NewDependFileData[CurIdx2] = ' ';
            CurIdx2++;
            FUNC12(&NewDependFileData[CurIdx2], argv[1]);
            CurIdx2 += FUNC13(argv[1]);
            NewDependFileData[CurIdx2] = ' ';
            CurIdx2++;
            FUNC12(NewDependFileData, &DependFileData[CurIdx]);
            CurIdx2 += 2;
            RuleDependencySplit = CurIdx + 2;
            break;
        }
        else
        {
            NewDependFileData[CurIdx2] = DependFileData[CurIdx];
        }
    }

    // Now loop through all the rule dependencies and
    // turn them into rules themselves
    FUNC12(NewDependFileData, "\n\n");
    CurIdx = RuleDependencySplit;
    CurIdx2 = FUNC13(NewDependFileData);
    for (; DependFileData[CurIdx]; CurIdx++,CurIdx2++)
    {
        // If it's a line continuation char '\' then skip over it
        if (DependFileData[CurIdx] == '\\')
        {
            CurIdx2--;
            continue;
        }

        // If it's a new line char '\n' then insert a colon ':' to make it a rule
        if (DependFileData[CurIdx] == '\n')
        {
            NewDependFileData[CurIdx2] = ':';
            CurIdx2++;
        }

        NewDependFileData[CurIdx2] = DependFileData[CurIdx];
    }

    // Write out file data
    FUNC11(DependFile);
    FUNC7(NewDependFileData, 1, FUNC13(NewDependFileData), DependFile);
    if (FUNC1(DependFile))
    {
        FUNC10("deptool: Dependency file write error.\n");
        FUNC0(DependFile);
        FUNC4(DependFileData);
        FUNC4(NewDependFileData);
        return ERROR_WRITEERROR;
    }

    FUNC0(DependFile);
    FUNC4(DependFileData);
    FUNC4(NewDependFileData);
    return ERROR_SUCCESS;
}