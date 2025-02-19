
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
typedef int tmsize_t ;
struct TYPE_3__ {int td_bitspersample; int td_samplesperpixel; int td_extrasamples; scalar_t__** td_transferfunction; } ;
typedef TYPE_1__ TIFFDirectory ;


 int _TIFFfree (scalar_t__*) ;
 scalar_t__ _TIFFmalloc (int) ;
 int _TIFFmemcpy (scalar_t__*,scalar_t__*,int) ;
 int floor (int) ;
 int pow (double,double) ;

__attribute__((used)) static int
TIFFDefaultTransferFunction(TIFFDirectory* td)
{
 uint16 **tf = td->td_transferfunction;
 tmsize_t i, n, nbytes;

 tf[0] = tf[1] = tf[2] = 0;
 if (td->td_bitspersample >= sizeof(tmsize_t) * 8 - 2)
  return 0;

 n = ((tmsize_t)1)<<td->td_bitspersample;
 nbytes = n * sizeof (uint16);
        tf[0] = (uint16 *)_TIFFmalloc(nbytes);
 if (tf[0] == ((void*)0))
  return 0;
 tf[0][0] = 0;
 for (i = 1; i < n; i++) {
  double t = (double)i/((double) n-1.);
  tf[0][i] = (uint16)floor(65535.*pow(t, 2.2) + .5);
 }

 if (td->td_samplesperpixel - td->td_extrasamples > 1) {
                tf[1] = (uint16 *)_TIFFmalloc(nbytes);
  if(tf[1] == ((void*)0))
   goto bad;
  _TIFFmemcpy(tf[1], tf[0], nbytes);
                tf[2] = (uint16 *)_TIFFmalloc(nbytes);
  if (tf[2] == ((void*)0))
   goto bad;
  _TIFFmemcpy(tf[2], tf[0], nbytes);
 }
 return 1;

bad:
 if (tf[0])
  _TIFFfree(tf[0]);
 if (tf[1])
  _TIFFfree(tf[1]);
 if (tf[2])
  _TIFFfree(tf[2]);
 tf[0] = tf[1] = tf[2] = 0;
 return 0;
}
