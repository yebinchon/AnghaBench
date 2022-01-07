
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * nested; } ;
struct TYPE_5__ {TYPE_1__ lang; } ;
typedef TYPE_2__ REgg ;


 int CTX ;
 int R_FREE (int ) ;
 int free (int ) ;
 int strdup (char const*) ;

__attribute__((used)) static void set_nested(REgg *egg, const char *s) {
 int i = 0;
 if (CTX < 1) {
  return;
 }
 free (egg->lang.nested[CTX]);
 egg->lang.nested[CTX] = strdup (s);



 for (i = 1; i < 10; i++) {

  R_FREE (egg->lang.nested[CTX + i]);
 }
}
