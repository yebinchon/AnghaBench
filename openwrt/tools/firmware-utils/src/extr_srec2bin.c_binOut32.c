
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bit32u ;


 int dumpfTell (char*,int) ;
 int fOut ;
 int fwrite (char*,int,int,int ) ;

void binOut32 ( bit32u Data )
{




   char sdat[4];
   int i;

   for(i=0;i<4;i++)
    sdat[i]=(char)(Data>>(i*8));
   fwrite( sdat, 1, 4, fOut);
   dumpfTell("Out32" , Data);
}
