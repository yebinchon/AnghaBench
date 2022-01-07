
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ RAnalFunction ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int functionCmp(const void *a, const void *b) {
 const RAnalFunction *fa = (const RAnalFunction *)a;
 const RAnalFunction *fb = (const RAnalFunction *)b;

 return strcmp (fa->name, fb->name);
}
