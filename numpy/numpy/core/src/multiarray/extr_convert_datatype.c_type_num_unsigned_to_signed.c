
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NPY_BYTE ;
 int NPY_INT ;
 int NPY_LONG ;
 int NPY_LONGLONG ;
 int NPY_SHORT ;






__attribute__((used)) static int
type_num_unsigned_to_signed(int type_num)
{
    switch (type_num) {
        case 132:
            return NPY_BYTE;
        case 128:
            return NPY_SHORT;
        case 131:
            return NPY_INT;
        case 130:
            return NPY_LONG;
        case 129:
            return NPY_LONGLONG;
        default:
            return type_num;
    }
}
