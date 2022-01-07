
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Value; struct TYPE_4__* szKey; } ;
typedef TYPE_1__ String ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void free_String(String* string) {
 if (string) {
  free (string->szKey);
  free (string->Value);
  free (string);
 }
}
