
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fdi_decomp_state ;


 int CAB (int ) ;
 int CAB_BLOCKMAX ;
 int DECR_DATAFORMAT ;
 int DECR_ILLEGALDATA ;
 int DECR_OK ;
 int inbuf ;
 int memcpy (int ,int ,size_t) ;
 int outbuf ;

__attribute__((used)) static int NONEfdi_decomp(int inlen, int outlen, fdi_decomp_state *decomp_state)
{
  if (inlen != outlen) return DECR_ILLEGALDATA;
  if (outlen > CAB_BLOCKMAX) return DECR_DATAFORMAT;
  memcpy(CAB(outbuf), CAB(inbuf), (size_t) inlen);
  return DECR_OK;
}
