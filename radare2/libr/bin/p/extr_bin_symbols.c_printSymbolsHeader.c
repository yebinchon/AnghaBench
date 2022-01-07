
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * uuid; } ;
typedef TYPE_1__ SymbolsHeader ;


 int eprintf (char*,...) ;

__attribute__((used)) static void printSymbolsHeader(SymbolsHeader sh) {

 eprintf ("0x%08x  uuid     ", 24);
 int i;
 for (i = 0; i < 16; i++) {
  eprintf ("%02x", sh.uuid[i]);
 }
 eprintf ("\n");




}
