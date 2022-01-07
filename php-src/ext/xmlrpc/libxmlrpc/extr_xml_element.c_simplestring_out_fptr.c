
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int simplestring ;


 int simplestring_addn (int *,char const*,int) ;

__attribute__((used)) static int simplestring_out_fptr(void *f, const char *text, int size)
{
   simplestring* buf = (simplestring*)f;
   if(buf) {
      simplestring_addn(buf, text, size);
   }
   return 0;
}
