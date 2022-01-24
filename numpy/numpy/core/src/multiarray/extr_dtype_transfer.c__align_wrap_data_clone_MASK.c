#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int npy_intp ;
struct TYPE_4__ {int src_itemsize; int dst_itemsize; char* bufferin; char* bufferout; int /*<<< orphan*/ * todata; int /*<<< orphan*/ * wrappeddata; int /*<<< orphan*/ * fromdata; } ;
typedef  TYPE_1__ _align_wrap_data ;
typedef  int /*<<< orphan*/  NpyAuxData ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NPY_LOWLEVEL_BUFFER_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static NpyAuxData *FUNC5(NpyAuxData *data)
{
    _align_wrap_data *d = (_align_wrap_data *)data;
    _align_wrap_data *newdata;
    npy_intp basedatasize, datasize;

    /* Round up the structure size to 16-byte boundary */
    basedatasize = (sizeof(_align_wrap_data)+15)&(-0x10);
    /* Add space for two low level buffers */
    datasize = basedatasize +
                NPY_LOWLEVEL_BUFFER_BLOCKSIZE*d->src_itemsize +
                NPY_LOWLEVEL_BUFFER_BLOCKSIZE*d->dst_itemsize;

    /* Allocate the data, and populate it */
    newdata = (_align_wrap_data *)FUNC3(datasize);
    if (newdata == NULL) {
        return NULL;
    }
    FUNC4(newdata, data, basedatasize);
    newdata->bufferin = (char *)newdata + basedatasize;
    newdata->bufferout = newdata->bufferin +
                NPY_LOWLEVEL_BUFFER_BLOCKSIZE*newdata->src_itemsize;
    if (newdata->wrappeddata != NULL) {
        newdata->wrappeddata = FUNC0(d->wrappeddata);
        if (newdata->wrappeddata == NULL) {
            FUNC2(newdata);
            return NULL;
        }
    }
    if (newdata->todata != NULL) {
        newdata->todata = FUNC0(d->todata);
        if (newdata->todata == NULL) {
            FUNC1(newdata->wrappeddata);
            FUNC2(newdata);
            return NULL;
        }
    }
    if (newdata->fromdata != NULL) {
        newdata->fromdata = FUNC0(d->fromdata);
        if (newdata->fromdata == NULL) {
            FUNC1(newdata->wrappeddata);
            FUNC1(newdata->todata);
            FUNC2(newdata);
            return NULL;
        }
    }

    return (NpyAuxData *)newdata;
}