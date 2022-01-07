
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NPY_CPU_BIG ;
 int PyArray_GetEndianness () ;

__attribute__((used)) static char _normalize_byteorder(char byteorder)
{
    switch(byteorder) {
        case '=':
            if (PyArray_GetEndianness() == NPY_CPU_BIG) {
                return '>';
            }
            else {
                return '<';
            }
        default:
            return byteorder;
    }
}
