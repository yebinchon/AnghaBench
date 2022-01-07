
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int simplestring ;


 int memset (int *,int ,int) ;

void simplestring_init(simplestring* string) {
   memset(string, 0, sizeof(simplestring));
}
