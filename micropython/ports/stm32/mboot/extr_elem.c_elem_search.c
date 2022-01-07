
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int const* ELEM_DATA_MAX ;
 int const ELEM_TYPE_END ;

const uint8_t *elem_search(const uint8_t *elem, uint8_t elem_id) {
    while (elem + 2 + elem[1] <= ELEM_DATA_MAX) {
        if (elem[0] == elem_id) {

            return elem + 2;
        }
        if (elem[0] == ELEM_TYPE_END) {

            return ((void*)0);
        }
        elem += 2 + elem[1];
    }
    return ((void*)0);
}
