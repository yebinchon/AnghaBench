
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;



__attribute__((used)) static int wlc_flag(wlc_param param, void *data, void *value)
{
 int *var = *((int **) data);

 *var = 1;

 return 0;
}
