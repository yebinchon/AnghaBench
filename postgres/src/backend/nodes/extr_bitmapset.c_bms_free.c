
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Bitmapset ;


 int pfree (int *) ;

void
bms_free(Bitmapset *a)
{
 if (a)
  pfree(a);
}
