
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ RCoreVisualViewGraphItem ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int cmpname (const void *_a, const void *_b) {
 const RCoreVisualViewGraphItem *a = _a, *b = _b;
 if (!a || !b || !a->name || !b->name) {
  return 0;
 }
 return (int)strcmp (a->name, b->name);
}
