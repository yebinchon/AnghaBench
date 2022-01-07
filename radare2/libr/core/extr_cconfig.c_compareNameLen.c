
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_1__ RAnalFunction ;


 scalar_t__ strlen (scalar_t__) ;

__attribute__((used)) static int compareNameLen(const RAnalFunction *a, const RAnalFunction *b) {
 return a && b && a->name && b->name && strlen (a->name) > strlen (b->name);
}
