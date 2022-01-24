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
struct resource_data {int codepage; int cbData; struct resource_data* lpData; int /*<<< orphan*/  lang; } ;
typedef  int /*<<< orphan*/  WORD ;
typedef  struct resource_data* LPVOID ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct resource_data* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct resource_data*,struct resource_data*,int) ; 

__attribute__((used)) static struct resource_data *FUNC3( WORD Language, DWORD codepage,
                                                     LPVOID lpData, DWORD cbData, BOOL copy_data )
{
    struct resource_data *resdata;

    if (!lpData || !cbData)
        return NULL;

    resdata = FUNC1( FUNC0(), 0, sizeof *resdata + (copy_data ? cbData : 0) );
    if (resdata)
    {
        resdata->lang = Language;
        resdata->codepage = codepage;
        resdata->cbData = cbData;
        if (copy_data)
        {
            resdata->lpData = &resdata[1];
            FUNC2( resdata->lpData, lpData, cbData );
        }
        else
            resdata->lpData = lpData;
    }

    return resdata;
}