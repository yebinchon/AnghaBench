
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ teken_t ;


 int teken_init (TYPE_1__*,int *,int *) ;
 int teken_input (TYPE_1__*,int const*,size_t) ;
 int tf ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
  teken_t t = { 0 };
  teken_init(&t, &tf, ((void*)0));
  teken_input(&t, data, size);
  return 0;
}
