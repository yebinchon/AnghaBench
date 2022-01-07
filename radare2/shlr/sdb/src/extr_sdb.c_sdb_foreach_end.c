
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; } ;
typedef TYPE_1__ Sdb ;



__attribute__((used)) static bool sdb_foreach_end(Sdb *s, bool result) {
 s->depth--;
 return result;
}
