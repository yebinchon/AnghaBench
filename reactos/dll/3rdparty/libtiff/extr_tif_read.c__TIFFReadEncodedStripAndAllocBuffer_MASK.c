#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  scalar_t__ tmsize_t ;
struct TYPE_9__ {scalar_t__ (* tif_decodestrip ) (TYPE_1__*,void*,scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* tif_postdecode ) (TYPE_1__*,void*,scalar_t__) ;int /*<<< orphan*/  tif_clientdata; } ;
typedef  TYPE_1__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,void*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,void*,scalar_t__) ; 

tmsize_t
FUNC9(TIFF* tif, uint32 strip,
                                    void **buf, tmsize_t bufsizetoalloc,
                                    tmsize_t size_to_read)
{
    tmsize_t this_stripsize;
    uint16 plane;

    if( *buf != NULL )
    {
        return FUNC3(tif, strip, *buf, size_to_read);
    }

    this_stripsize=FUNC4(tif, strip, &plane);
    if (this_stripsize==((tmsize_t)(-1)))
            return((tmsize_t)(-1));

    if ((size_to_read!=(tmsize_t)(-1))&&(size_to_read<this_stripsize))
            this_stripsize=size_to_read;
    if (!FUNC2(tif,strip))
            return((tmsize_t)(-1));

    *buf = FUNC5(bufsizetoalloc);
    if (*buf == NULL) {
            FUNC0(tif->tif_clientdata, FUNC1(tif), "No space for strip buffer");
            return((tmsize_t)(-1));
    }
    FUNC6(*buf, 0, bufsizetoalloc);

    if ((*tif->tif_decodestrip)(tif,*buf,this_stripsize,plane)<=0)
            return((tmsize_t)(-1));
    (*tif->tif_postdecode)(tif,*buf,this_stripsize);
    return(this_stripsize);


}