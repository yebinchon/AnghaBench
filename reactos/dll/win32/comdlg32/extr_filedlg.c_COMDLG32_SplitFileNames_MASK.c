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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
typedef  char* LPWSTR ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

int FUNC3(LPWSTR lpstrEdit, UINT nStrLen, LPWSTR *lpstrFileList, UINT *sizeUsed)
{
	UINT nStrCharCount = 0;	/* index in src buffer */
	UINT nFileIndex = 0;	/* index in dest buffer */
	UINT nFileCount = 0;	/* number of files */

	/* we might get single filename without any '"',
	 * so we need nStrLen + terminating \0 + end-of-list \0 */
	*lpstrFileList = FUNC0((nStrLen + 2) * sizeof(WCHAR));
	*sizeUsed = 0;

	/* build delimited file list from filenames */
	while ( nStrCharCount <= nStrLen )
	{
	  if ( lpstrEdit[nStrCharCount]=='"' )
	  {
	    nStrCharCount++;
	    while ((nStrCharCount <= nStrLen) && (lpstrEdit[nStrCharCount]!='"'))
	    {
	      (*lpstrFileList)[nFileIndex++] = lpstrEdit[nStrCharCount];
	      nStrCharCount++;
	    }
	    (*lpstrFileList)[nFileIndex++] = 0;
	    nFileCount++;
	  }
	  nStrCharCount++;
	}

	/* single, unquoted string */
	if ((nStrLen > 0) && (nFileIndex == 0) )
	{
	  FUNC1(*lpstrFileList, lpstrEdit);
	  nFileIndex = FUNC2(lpstrEdit) + 1;
	  nFileCount = 1;
	}

        /* trailing \0 */
        (*lpstrFileList)[nFileIndex++] = '\0';

        *sizeUsed = nFileIndex;
	return nFileCount;
}