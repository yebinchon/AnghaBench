
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hashitem_T ;
struct TYPE_3__ {int di_tv; } ;
typedef TYPE_1__ dictitem_T ;
typedef int PyObject ;


 int * ConvertToPyObject (int *) ;
 TYPE_1__* dict_lookup (int *) ;

__attribute__((used)) static PyObject *
dict_val(hashitem_T *hi)
{
    dictitem_T *di;

    di = dict_lookup(hi);
    return ConvertToPyObject(&di->di_tv);
}
