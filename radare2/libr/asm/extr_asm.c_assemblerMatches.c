
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* cur; int bits; } ;
struct TYPE_8__ {int arch; int assemble; } ;
struct TYPE_7__ {int arch; } ;
typedef TYPE_2__ RAsmPlugin ;
typedef TYPE_3__ RAsm ;


 int has_bits (TYPE_2__*,int ) ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static bool assemblerMatches(RAsm *a, RAsmPlugin *h) {
 if (!a || !h->arch || !h->assemble || !has_bits (h, a->bits)) {
  return 0;
 }
 return (!strncmp (a->cur->arch, h->arch, strlen (a->cur->arch)));
}
