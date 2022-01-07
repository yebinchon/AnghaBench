
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {int * buf; } ;
typedef TYPE_1__ RIOGzip ;
typedef TYPE_2__ RIODesc ;



__attribute__((used)) static inline ut8* _io_malloc_buf(RIODesc *desc) {
 if (!desc) {
  return ((void*)0);
 }
 RIOGzip *mal = (RIOGzip*)desc->data;
 return mal->buf;
}
