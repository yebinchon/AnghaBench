
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int version; } ;
typedef TYPE_1__ store_engine ;



__attribute__((used)) static uint64_t _next_version(store_engine *e) {
    return e->version++;
}
