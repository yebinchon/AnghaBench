
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int arrayLevel; } ;
typedef TYPE_1__ context ;



__attribute__((used)) static int yajl_found_start_array(void* ctx) {
    ((context*)ctx)->arrayLevel++;
    return 1;
}
