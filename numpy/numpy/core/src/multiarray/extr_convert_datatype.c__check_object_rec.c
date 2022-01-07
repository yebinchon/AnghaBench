
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyArray_Descr ;


 scalar_t__ PyDataType_HASFIELDS (int *) ;
 scalar_t__ PyDataType_REFCHK (int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;

__attribute__((used)) static int
_check_object_rec(PyArray_Descr *descr)
{
    if (PyDataType_HASFIELDS(descr) && PyDataType_REFCHK(descr)) {
        PyErr_SetString(PyExc_TypeError, "Not supported for this data-type.");
        return -1;
    }
    return 0;
}
