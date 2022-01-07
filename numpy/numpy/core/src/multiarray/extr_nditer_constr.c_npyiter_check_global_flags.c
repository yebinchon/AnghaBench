
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_uint32 ;


 int NPY_ITER_BUFFERED ;
 int NPY_ITER_C_INDEX ;
 int NPY_ITER_DELAY_BUFALLOC ;
 int NPY_ITER_EXTERNAL_LOOP ;
 int NPY_ITER_F_INDEX ;
 int NPY_ITER_GROWINNER ;
 int NPY_ITER_MULTI_INDEX ;
 int NPY_ITER_PER_OP_FLAGS ;
 int NPY_ITER_RANGED ;
 int NPY_ITFLAG_BUFFER ;
 int NPY_ITFLAG_DELAYBUF ;
 int NPY_ITFLAG_EXLOOP ;
 int NPY_ITFLAG_GROWINNER ;
 int NPY_ITFLAG_HASINDEX ;
 int NPY_ITFLAG_HASMULTIINDEX ;
 int NPY_ITFLAG_RANGE ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;

__attribute__((used)) static int
npyiter_check_global_flags(npy_uint32 flags, npy_uint32* itflags)
{
    if ((flags & NPY_ITER_PER_OP_FLAGS) != 0) {
        PyErr_SetString(PyExc_ValueError,
                    "A per-operand flag was passed as a global flag "
                    "to the iterator constructor");
        return 0;
    }


    if (flags & (NPY_ITER_C_INDEX | NPY_ITER_F_INDEX)) {
        if ((flags & (NPY_ITER_C_INDEX | NPY_ITER_F_INDEX)) ==
                    (NPY_ITER_C_INDEX | NPY_ITER_F_INDEX)) {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator flags C_INDEX and "
                    "F_INDEX cannot both be specified");
            return 0;
        }
        (*itflags) |= NPY_ITFLAG_HASINDEX;
    }

    if (flags & NPY_ITER_MULTI_INDEX) {




        (*itflags) |= NPY_ITFLAG_HASMULTIINDEX;
    }

    if (flags & NPY_ITER_EXTERNAL_LOOP) {
        if ((*itflags) & (NPY_ITFLAG_HASINDEX | NPY_ITFLAG_HASMULTIINDEX)) {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator flag EXTERNAL_LOOP cannot be used "
                    "if an index or multi-index is being tracked");
            return 0;
        }
        (*itflags) |= NPY_ITFLAG_EXLOOP;
    }

    if (flags & NPY_ITER_RANGED) {
        (*itflags) |= NPY_ITFLAG_RANGE;
        if ((flags & NPY_ITER_EXTERNAL_LOOP) &&
                                    !(flags & NPY_ITER_BUFFERED)) {
            PyErr_SetString(PyExc_ValueError,
                    "Iterator flag RANGED cannot be used with "
                    "the flag EXTERNAL_LOOP unless "
                    "BUFFERED is also enabled");
            return 0;
        }
    }

    if (flags & NPY_ITER_BUFFERED) {
        (*itflags) |= NPY_ITFLAG_BUFFER;
        if (flags & NPY_ITER_GROWINNER) {
            (*itflags) |= NPY_ITFLAG_GROWINNER;
        }
        if (flags & NPY_ITER_DELAY_BUFALLOC) {
            (*itflags) |= NPY_ITFLAG_DELAYBUF;
        }
    }

    return 1;
}
