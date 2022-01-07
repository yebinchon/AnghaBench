
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ objectLevel; } ;
typedef TYPE_1__ context ;


 int assert (int) ;

__attribute__((used)) static int yajl_found_end_object(void* ctx) {
    assert(((context*)ctx)->objectLevel > 0);
    ((context*)ctx)->objectLevel--;
    return 1;
}
