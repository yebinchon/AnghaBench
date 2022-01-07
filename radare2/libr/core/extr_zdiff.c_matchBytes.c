
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* bytes; } ;
struct TYPE_5__ {scalar_t__ size; int bytes; } ;
typedef TYPE_2__ RSignItem ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool matchBytes(RSignItem *a, RSignItem *b) {
 if (a->bytes && b->bytes) {
  if (a->bytes->size == b->bytes->size) {
   return !memcmp (a->bytes->bytes, b->bytes->bytes, b->bytes->size);
  }
 }
 return 0;
}
