
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dummy_var ;

__attribute__((used)) static void read_var(int len)
{
 char cval __attribute__((unused));
 short sval __attribute__((unused));
 int ival __attribute__((unused));
 long long lval __attribute__((unused));

 switch (len) {
 case 1:
  cval = *(char *)dummy_var;
  break;
 case 2:
  sval = *(short *)dummy_var;
  break;
 case 4:
  ival = *(int *)dummy_var;
  break;
 case 8:
  lval = *(long long *)dummy_var;
  break;
 }
}
