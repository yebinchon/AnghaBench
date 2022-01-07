
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct _HPDF_CCITT_Data {int dummy; } ;
struct TYPE_6__ {int rowbytes; int rowpixels; } ;
struct TYPE_5__ {int* runs; int* curruns; int* refruns; unsigned char* refline; } ;
typedef int HPDF_UINT ;
typedef TYPE_1__ HPDF_Fax3CodecState ;
typedef TYPE_2__ HPDF_Fax3BaseState ;


 TYPE_1__* EncoderState (struct _HPDF_CCITT_Data*) ;
 TYPE_2__* Fax3State (struct _HPDF_CCITT_Data*) ;
 int HPDF_OK ;
 int HPDF_UNUSED (int) ;
 int TIFFroundup (int,int) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static int
HPDF_Fax3SetupState(struct _HPDF_CCITT_Data *pData, HPDF_UINT width,
       HPDF_UINT height,
       HPDF_UINT line_width)
{
 HPDF_Fax3BaseState* sp = Fax3State(pData);
 HPDF_Fax3CodecState* esp = EncoderState(pData);
 uint32 rowbytes, rowpixels, nruns;

 HPDF_UNUSED (height);

 rowbytes = line_width;
 rowpixels = width;

 sp->rowbytes = (uint32) rowbytes;
 sp->rowpixels = (uint32) rowpixels;

 nruns = 2*TIFFroundup(rowpixels,32);
 nruns += 3;
 esp->runs = (uint32*) malloc(2*nruns * sizeof (uint32));
 if (esp->runs == ((void*)0))
  return 1;
 esp->curruns = esp->runs;
 esp->refruns = esp->runs + nruns;
 esp->refline = (unsigned char*) malloc(rowbytes);
 if (esp->refline == ((void*)0)) {
  return 1;
 }

 return HPDF_OK;
}
