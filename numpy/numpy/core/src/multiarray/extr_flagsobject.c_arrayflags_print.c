
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArrayFlagsObject ;


 int NPY_ARRAY_ALIGNED ;
 int NPY_ARRAY_C_CONTIGUOUS ;
 int NPY_ARRAY_F_CONTIGUOUS ;
 int NPY_ARRAY_OWNDATA ;
 int NPY_ARRAY_UPDATEIFCOPY ;
 int NPY_ARRAY_WARN_ON_WRITE ;
 int NPY_ARRAY_WRITEABLE ;
 int NPY_ARRAY_WRITEBACKIFCOPY ;
 int * PyUString_FromFormat (char*,char*,int ,char*,int ,char*,int ,char*,int ,char const*,char*,int ,char*,int ,char*,int ) ;
 int _torf_ (int,int ) ;

__attribute__((used)) static PyObject *
arrayflags_print(PyArrayFlagsObject *self)
{
    int fl = self->flags;
    const char *_warn_on_write = "";

    if (fl & NPY_ARRAY_WARN_ON_WRITE) {
        _warn_on_write = "  (with WARN_ON_WRITE=True)";
    }
    return PyUString_FromFormat(
                        "  %s : %s\n  %s : %s\n"
                        "  %s : %s\n  %s : %s%s\n"
                        "  %s : %s\n  %s : %s\n"
                        "  %s : %s\n",
                        "C_CONTIGUOUS", _torf_(fl, NPY_ARRAY_C_CONTIGUOUS),
                        "F_CONTIGUOUS", _torf_(fl, NPY_ARRAY_F_CONTIGUOUS),
                        "OWNDATA", _torf_(fl, NPY_ARRAY_OWNDATA),
                        "WRITEABLE", _torf_(fl, NPY_ARRAY_WRITEABLE),
                        _warn_on_write,
                        "ALIGNED", _torf_(fl, NPY_ARRAY_ALIGNED),
                        "WRITEBACKIFCOPY", _torf_(fl, NPY_ARRAY_WRITEBACKIFCOPY),
                        "UPDATEIFCOPY", _torf_(fl, NPY_ARRAY_UPDATEIFCOPY)
    );
}
