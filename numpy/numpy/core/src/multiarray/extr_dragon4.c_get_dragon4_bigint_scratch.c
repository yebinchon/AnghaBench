
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dragon4_Scratch ;


 int PyErr_SetString (int ,char*) ;
 int PyExc_RuntimeError ;
 int _bigint_static ;
 int _bigint_static_in_use ;

__attribute__((used)) static Dragon4_Scratch*
get_dragon4_bigint_scratch(void) {

    if (_bigint_static_in_use) {
        PyErr_SetString(PyExc_RuntimeError,
            "numpy float printing code is not re-entrant. "
            "Ping the devs to fix it.");
        return ((void*)0);
    }
    _bigint_static_in_use = 1;


    return &_bigint_static;
}
