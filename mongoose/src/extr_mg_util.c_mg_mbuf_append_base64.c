
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct cs_base64_ctx {int dummy; } ;


 int cs_base64_finish (struct cs_base64_ctx*) ;
 int cs_base64_init (struct cs_base64_ctx*,int ,struct mbuf*) ;
 int cs_base64_update (struct cs_base64_ctx*,char const*,size_t) ;
 int mg_mbuf_append_base64_putc ;

void mg_mbuf_append_base64(struct mbuf *mbuf, const void *data, size_t len) {
  struct cs_base64_ctx ctx;
  cs_base64_init(&ctx, mg_mbuf_append_base64_putc, mbuf);
  cs_base64_update(&ctx, (const char *) data, len);
  cs_base64_finish(&ctx);
}
