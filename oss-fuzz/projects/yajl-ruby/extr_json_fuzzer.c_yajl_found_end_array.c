
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ arrayLevel; } ;
typedef TYPE_1__ context ;


 int assert (int) ;

__attribute__((used)) static int yajl_found_end_array(void* ctx) {
    assert(((context*)ctx)->arrayLevel > 0);
    ((context*)ctx)->arrayLevel--;
    return 1;
}
