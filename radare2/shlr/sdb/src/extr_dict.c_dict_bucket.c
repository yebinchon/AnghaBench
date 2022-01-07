
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut32 ;
typedef int dicti ;
struct TYPE_3__ {int size; } ;
typedef TYPE_1__ dict ;



__attribute__((used)) static ut32 dict_bucket(dict *m, dicti k) {
 if (m->size > 0) {
  return k % m->size;
 }
 return 0;
}
