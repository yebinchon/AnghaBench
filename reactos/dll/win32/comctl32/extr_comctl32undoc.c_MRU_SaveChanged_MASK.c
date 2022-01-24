#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  size_t UINT ;
struct TYPE_7__ {int itemFlag; int size; int /*<<< orphan*/  datastart; } ;
struct TYPE_5__ {char* lpszSubKey; int fFlags; int /*<<< orphan*/  hKey; } ;
struct TYPE_6__ {int wineFlags; char* realMRU; size_t cursize; TYPE_1__ extview; TYPE_3__** array; } ;
typedef  TYPE_2__* LPWINEMRULIST ;
typedef  TYPE_3__* LPWINEMRUITEM ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,...) ; 
 int KEY_READ ; 
 int KEY_WRITE ; 
 int MRU_BINARY ; 
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int WMRUF_CHANGED ; 
 int WMRUIF_CHANGED ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* strMRUList ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8 ( LPWINEMRULIST mp )
{
    UINT i, err;
    HKEY newkey;
    WCHAR realname[2];
    LPWINEMRUITEM witem;

    /* or should we do the following instead of RegOpenKeyEx:
     */

    /* open the sub key */
    if ((err = FUNC3( mp->extview.hKey, mp->extview.lpszSubKey,
			      0, KEY_WRITE, &newkey))) {
	/* not present - what to do ??? */
	FUNC0("Could not open key, error=%d, attempting to create\n",
	    err);
	if ((err = FUNC2( mp->extview.hKey, mp->extview.lpszSubKey,
				    0,
				    NULL,
				    REG_OPTION_NON_VOLATILE,
				    KEY_READ | KEY_WRITE,
				    0,
				    &newkey,
				    0))) {
	    FUNC0("failed to create key /%s/, err=%d\n",
		FUNC6(mp->extview.lpszSubKey), err);
	    return;
	}
    }
    if (mp->wineFlags & WMRUF_CHANGED) {
	mp->wineFlags &= ~WMRUF_CHANGED;
	err = FUNC4(newkey, strMRUList, 0, REG_SZ, (LPBYTE)mp->realMRU,
			     (FUNC7(mp->realMRU) + 1)*sizeof(WCHAR));
	if (err) {
	    FUNC0("error saving MRUList, err=%d\n", err);
	}
	FUNC5("saving MRUList=/%s/\n", FUNC6(mp->realMRU));
    }
    realname[1] = 0;
    for(i=0; i<mp->cursize; i++) {
	witem = mp->array[i];
	if (witem->itemFlag & WMRUIF_CHANGED) {
	    witem->itemFlag &= ~WMRUIF_CHANGED;
	    realname[0] = 'a' + i;
	    err = FUNC4(newkey, realname, 0,
				 (mp->extview.fFlags & MRU_BINARY) ?
				 REG_BINARY : REG_SZ,
				 &witem->datastart, witem->size);
	    if (err) {
		FUNC0("error saving /%s/, err=%d\n", FUNC6(realname), err);
	    }
            FUNC5("saving value for name /%s/ size=%d\n",
		  FUNC6(realname), witem->size);
	}
    }
    FUNC1( newkey );
}