
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* inbuf; char* outbuf; void* hfdi; } ;
typedef TYPE_1__ fdi_decomp_state ;
struct TYPE_5__ {int pfnfree; int pfnalloc; } ;
typedef TYPE_2__ FDI_Int ;


 unsigned int CAB_BLOCKMAX ;
 unsigned int CAB_INPUTMAX ;
 int DECR_DATAFORMAT ;
 int FIXME (char*,unsigned int,unsigned int) ;
 int TRACE (char*,unsigned int,unsigned int,char*,char*) ;
 int ZIPfdi_decomp (unsigned int,unsigned int,TYPE_1__*) ;
 int fdi_alloc ;
 int fdi_free ;
 int memcpy (char*,char*,unsigned int) ;

int mszip_decompress(unsigned int inlen, unsigned int outlen, char* inbuffer, char* outbuffer)
{
  int ret;
  fdi_decomp_state decomp_state;
  FDI_Int fdi;

  TRACE("(%u, %u, %p, %p)\n", inlen, outlen, inbuffer, outbuffer);

  if ((inlen > CAB_INPUTMAX) || (outlen > CAB_BLOCKMAX))
  {
    FIXME("Big file not supported yet (inlen = %u, outlen = %u)\n", inlen, outlen);
    return DECR_DATAFORMAT;
  }

  fdi.pfnalloc = fdi_alloc;
  fdi.pfnfree = fdi_free;
  decomp_state.hfdi = (void*)&fdi;

  memcpy(decomp_state.inbuf, inbuffer, inlen);

  ret = ZIPfdi_decomp(inlen, outlen, &decomp_state);

  memcpy(outbuffer, decomp_state.outbuf, outlen);

  return ret;
}
