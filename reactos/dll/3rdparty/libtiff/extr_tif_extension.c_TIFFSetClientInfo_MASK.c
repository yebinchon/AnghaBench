#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int tmsize_t ;
struct TYPE_5__ {TYPE_1__* tif_clientinfo; } ;
struct TYPE_4__ {char* name; void* data; struct TYPE_4__* next; } ;
typedef  TYPE_1__ TIFFClientInfoLink ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

void FUNC5( TIFF *tif, void *data, const char *name )

{
    TIFFClientInfoLink *psLink = tif->tif_clientinfo;

    /*
    ** Do we have an existing link with this name?  If so, just
    ** set it.
    */
    while( psLink != NULL && FUNC2(psLink->name,name) != 0 )
        psLink = psLink->next;

    if( psLink != NULL )
    {
        psLink->data = data;
        return;
    }

    /*
    ** Create a new link.
    */

    psLink = (TIFFClientInfoLink *) FUNC0(sizeof(TIFFClientInfoLink));
    FUNC1 (psLink != NULL);
    psLink->next = tif->tif_clientinfo;
    psLink->name = (char *) FUNC0((tmsize_t)(FUNC4(name)+1));
    FUNC1 (psLink->name != NULL);
    FUNC3(psLink->name, name);
    psLink->data = data;

    tif->tif_clientinfo = psLink;
}