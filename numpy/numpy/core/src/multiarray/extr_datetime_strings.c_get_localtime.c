
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int NPY_TIME_T ;


 int PyErr_Format (int ,char*,char*) ;
 int PyExc_OSError ;
 scalar_t__ _localtime64_s (struct tm*,int *) ;
 struct tm* localtime (int *) ;
 int * localtime_r (int *,struct tm*) ;
 scalar_t__ localtime_s (struct tm*,int *) ;
 int memcpy (struct tm*,struct tm*,int) ;

__attribute__((used)) static int
get_localtime(NPY_TIME_T *ts, struct tm *tms)
{
    char *func_name = "<unknown>";
    if (localtime_r(ts, tms) == ((void*)0)) {
        func_name = "localtime_r";
        goto fail;
    }


    return 0;

fail:
    PyErr_Format(PyExc_OSError, "Failed to use '%s' to convert "
                                "to a local time", func_name);
    return -1;
}
