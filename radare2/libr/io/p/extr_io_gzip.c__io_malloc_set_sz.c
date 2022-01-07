
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ RIOGzip ;
typedef TYPE_2__ RIODesc ;



__attribute__((used)) static inline void _io_malloc_set_sz(RIODesc *desc, ut32 sz) {
 if (!desc) {
  return;
 }
 RIOGzip *mal = (RIOGzip*)desc->data;
 if (mal) {
  mal->size = sz;
 }
}
