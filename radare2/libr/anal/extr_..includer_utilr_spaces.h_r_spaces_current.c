
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * current; } ;
typedef TYPE_1__ RSpaces ;
typedef int RSpace ;



__attribute__((used)) static inline RSpace *r_spaces_current(RSpaces *sp) {
 return sp->current;
}
