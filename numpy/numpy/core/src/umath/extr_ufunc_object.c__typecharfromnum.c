
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char type; } ;
typedef TYPE_1__ PyArray_Descr ;


 TYPE_1__* PyArray_DescrFromType (int) ;
 int Py_DECREF (TYPE_1__*) ;

__attribute__((used)) static char
_typecharfromnum(int num) {
    PyArray_Descr *descr;
    char ret;

    descr = PyArray_DescrFromType(num);
    ret = descr->type;
    Py_DECREF(descr);
    return ret;
}
