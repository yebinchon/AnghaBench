
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ RIOMalloc ;
typedef TYPE_2__ RIODesc ;



__attribute__((used)) static inline ut32 _io_malloc_sz(RIODesc *desc) {
 if (!desc) {
  return 0;
 }
 RIOMalloc *mal = (RIOMalloc*)desc->data;
 return mal? mal->size: 0;
}
