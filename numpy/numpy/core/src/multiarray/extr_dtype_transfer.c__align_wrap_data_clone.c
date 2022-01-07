
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int npy_intp ;
struct TYPE_4__ {int src_itemsize; int dst_itemsize; char* bufferin; char* bufferout; int * todata; int * wrappeddata; int * fromdata; } ;
typedef TYPE_1__ _align_wrap_data ;
typedef int NpyAuxData ;


 void* NPY_AUXDATA_CLONE (int *) ;
 int NPY_AUXDATA_FREE (int *) ;
 int NPY_LOWLEVEL_BUFFER_BLOCKSIZE ;
 int PyArray_free (TYPE_1__*) ;
 scalar_t__ PyArray_malloc (int) ;
 int memcpy (TYPE_1__*,int *,int) ;

__attribute__((used)) static NpyAuxData *_align_wrap_data_clone(NpyAuxData *data)
{
    _align_wrap_data *d = (_align_wrap_data *)data;
    _align_wrap_data *newdata;
    npy_intp basedatasize, datasize;


    basedatasize = (sizeof(_align_wrap_data)+15)&(-0x10);

    datasize = basedatasize +
                NPY_LOWLEVEL_BUFFER_BLOCKSIZE*d->src_itemsize +
                NPY_LOWLEVEL_BUFFER_BLOCKSIZE*d->dst_itemsize;


    newdata = (_align_wrap_data *)PyArray_malloc(datasize);
    if (newdata == ((void*)0)) {
        return ((void*)0);
    }
    memcpy(newdata, data, basedatasize);
    newdata->bufferin = (char *)newdata + basedatasize;
    newdata->bufferout = newdata->bufferin +
                NPY_LOWLEVEL_BUFFER_BLOCKSIZE*newdata->src_itemsize;
    if (newdata->wrappeddata != ((void*)0)) {
        newdata->wrappeddata = NPY_AUXDATA_CLONE(d->wrappeddata);
        if (newdata->wrappeddata == ((void*)0)) {
            PyArray_free(newdata);
            return ((void*)0);
        }
    }
    if (newdata->todata != ((void*)0)) {
        newdata->todata = NPY_AUXDATA_CLONE(d->todata);
        if (newdata->todata == ((void*)0)) {
            NPY_AUXDATA_FREE(newdata->wrappeddata);
            PyArray_free(newdata);
            return ((void*)0);
        }
    }
    if (newdata->fromdata != ((void*)0)) {
        newdata->fromdata = NPY_AUXDATA_CLONE(d->fromdata);
        if (newdata->fromdata == ((void*)0)) {
            NPY_AUXDATA_FREE(newdata->wrappeddata);
            NPY_AUXDATA_FREE(newdata->todata);
            PyArray_free(newdata);
            return ((void*)0);
        }
    }

    return (NpyAuxData *)newdata;
}
