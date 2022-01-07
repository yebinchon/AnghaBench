
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opt_type; int lastoption; } ;
typedef TYPE_1__ optiterinfo_T ;
typedef int char_u ;
typedef int PyObject ;


 int * PyString_FromString (char*) ;
 int * option_iter_next (int *,int ) ;

__attribute__((used)) static PyObject *
OptionsIterNext(optiterinfo_T **oii)
{
    char_u *name;

    if ((name = option_iter_next(&((*oii)->lastoption), (*oii)->opt_type)))
 return PyString_FromString((char *)name);

    return ((void*)0);
}
