
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pending_key_t ;


 int is_down (int *) ;

bool is_up(pending_key_t *k) {
    return !is_down(k);
}
