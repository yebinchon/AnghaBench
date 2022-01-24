#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArrayFlagsObject ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_ARRAY_ALIGNED ; 
 int /*<<< orphan*/  NPY_ARRAY_C_CONTIGUOUS ; 
 int /*<<< orphan*/  NPY_ARRAY_F_CONTIGUOUS ; 
 int /*<<< orphan*/  NPY_ARRAY_OWNDATA ; 
 int /*<<< orphan*/  NPY_ARRAY_UPDATEIFCOPY ; 
 int NPY_ARRAY_WARN_ON_WRITE ; 
 int /*<<< orphan*/  NPY_ARRAY_WRITEABLE ; 
 int /*<<< orphan*/  NPY_ARRAY_WRITEBACKIFCOPY ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC2(PyArrayFlagsObject *self)
{
    int fl = self->flags;
    const char *_warn_on_write = "";

    if (fl & NPY_ARRAY_WARN_ON_WRITE) {
        _warn_on_write = "  (with WARN_ON_WRITE=True)";
    }
    return FUNC0(
                        "  %s : %s\n  %s : %s\n"
                        "  %s : %s\n  %s : %s%s\n"
                        "  %s : %s\n  %s : %s\n"
                        "  %s : %s\n",
                        "C_CONTIGUOUS",    FUNC1(fl, NPY_ARRAY_C_CONTIGUOUS),
                        "F_CONTIGUOUS",    FUNC1(fl, NPY_ARRAY_F_CONTIGUOUS),
                        "OWNDATA",         FUNC1(fl, NPY_ARRAY_OWNDATA),
                        "WRITEABLE",       FUNC1(fl, NPY_ARRAY_WRITEABLE),
                        _warn_on_write,
                        "ALIGNED",         FUNC1(fl, NPY_ARRAY_ALIGNED),
                        "WRITEBACKIFCOPY", FUNC1(fl, NPY_ARRAY_WRITEBACKIFCOPY),
                        "UPDATEIFCOPY",    FUNC1(fl, NPY_ARRAY_UPDATEIFCOPY)
    );
}