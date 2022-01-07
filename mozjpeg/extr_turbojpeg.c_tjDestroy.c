
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tjhandle ;
struct TYPE_4__ {int setjmp_buffer; } ;
struct TYPE_5__ {int init; TYPE_1__ jerr; } ;


 int COMPRESS ;
 int DECOMPRESS ;
 int cinfo ;
 int dinfo ;
 int free (TYPE_2__*) ;
 int getinstance (int ) ;
 int jpeg_destroy_compress (int ) ;
 int jpeg_destroy_decompress (int ) ;
 scalar_t__ setjmp (int ) ;
 TYPE_2__* this ;

int tjDestroy(tjhandle handle)
{
 getinstance(handle);

 if(setjmp(this->jerr.setjmp_buffer)) return -1;
 if(this->init&COMPRESS) jpeg_destroy_compress(cinfo);
 if(this->init&DECOMPRESS) jpeg_destroy_decompress(dinfo);
 free(this);
 return 0;
}
