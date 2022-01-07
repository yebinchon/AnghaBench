
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
struct TYPE_2__ {scalar_t__ number; int name; } ;


 int RAsmLm32CsrNumber ;
 TYPE_1__* RAsmLm32Csrs ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int csr_number_to_string(ut8 csr, char *str) {
 ut8 match_idx = 0xff;
 int i;
 for (i = 0; i < RAsmLm32CsrNumber; i++) {
  if (RAsmLm32Csrs[i].number == csr) {
   match_idx = i;
   break;
  }
 }

 if (match_idx == 0xff) {
  return -1;
 }
 strcpy (str, RAsmLm32Csrs[match_idx].name);
 return 0;
}
