
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _TIFFfree (double*) ;
 double* _TIFFmalloc (size_t) ;

__attribute__((used)) static void
setDoubleArrayOneValue(double** vpp, double value, size_t nmemb)
{
 if (*vpp)
  _TIFFfree(*vpp);
 *vpp = _TIFFmalloc(nmemb*sizeof(double));
 if (*vpp)
 {
  while (nmemb--)
   ((double*)*vpp)[nmemb] = value;
 }
}
