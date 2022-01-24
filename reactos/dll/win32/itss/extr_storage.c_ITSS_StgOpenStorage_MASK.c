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
struct chmFile {int dummy; } ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  SNB ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FUNC0 (struct chmFile*,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct chmFile* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

HRESULT FUNC4( 
    const WCHAR* pwcsName,
    IStorage* pstgPriority,
    DWORD grfMode,
    SNB snbExclude,
    DWORD reserved,
    IStorage** ppstgOpen)
{
    struct chmFile *chmfile;
    static const WCHAR szRoot[] = { '/', 0 };

    FUNC1("%s\n", FUNC3(pwcsName) );

    chmfile = FUNC2( pwcsName );
    if( !chmfile )
        return E_FAIL;

    return FUNC0( chmfile, szRoot, ppstgOpen );
}