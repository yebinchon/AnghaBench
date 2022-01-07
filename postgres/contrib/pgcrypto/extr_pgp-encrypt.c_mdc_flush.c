
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int PushFilter ;
typedef int PX_MD ;


 int MDC_DIGEST_LEN ;
 int pushf_write (int *,int*,int) ;
 int px_md_finish (int *,int*) ;
 int px_md_update (int *,int*,int) ;
 int px_memset (int*,int ,int) ;

__attribute__((used)) static int
mdc_flush(PushFilter *dst, void *priv)
{
 int res;
 uint8 pkt[2 + MDC_DIGEST_LEN];
 PX_MD *md = priv;




 pkt[0] = 0xD3;
 pkt[1] = 0x14;
 px_md_update(md, pkt, 2);
 px_md_finish(md, pkt + 2);

 res = pushf_write(dst, pkt, 2 + MDC_DIGEST_LEN);
 px_memset(pkt, 0, 2 + MDC_DIGEST_LEN);
 return res;
}
