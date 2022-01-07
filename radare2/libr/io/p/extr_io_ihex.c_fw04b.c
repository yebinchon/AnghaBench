
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef int ut16 ;
typedef int FILE ;


 int fprintf (int *,char*,int,scalar_t__) ;

__attribute__((used)) static int fw04b(FILE *fd, ut16 eaddr) {
 ut8 cks = 0 - (6 + (eaddr >> 8) + (eaddr & 0xff));
 return fprintf (fd, ":02000004%04X%02X\n", eaddr, cks);

}
