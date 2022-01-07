
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int GET ;
 int PARAM_MODE ;
 int SET ;

__attribute__((used)) static int wlc_int(wlc_param param, void *data, void *value)
{
 int *var = *((int **) data);
 int *val = (int *) value;

 if ((param & PARAM_MODE) == SET) {
  *var = *val;
 } else if ((param & PARAM_MODE) == GET) {
  *val = *var;
 }

 return 0;
}
