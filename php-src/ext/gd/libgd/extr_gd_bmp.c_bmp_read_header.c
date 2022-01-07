
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gdIOCtx ;
struct TYPE_3__ {int off; int reserved2; int reserved1; int size; int magic; } ;
typedef TYPE_1__ bmp_hdr_t ;


 int gdGetIntLSB (int *,int *) ;
 int gdGetWordLSB (int *,int *) ;

__attribute__((used)) static int bmp_read_header(gdIOCtx *infile, bmp_hdr_t *hdr)
{
 if(
     !gdGetWordLSB(&hdr->magic, infile) ||
     !gdGetIntLSB(&hdr->size, infile) ||
     !gdGetWordLSB(&hdr->reserved1, infile) ||
     !gdGetWordLSB(&hdr->reserved2 , infile) ||
     !gdGetIntLSB(&hdr->off , infile)
 ) {
  return 1;
 }
 return 0;
}
