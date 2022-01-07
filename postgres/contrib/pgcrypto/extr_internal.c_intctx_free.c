
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int_ctx {scalar_t__ ptr; } ;
typedef struct int_ctx PX_Cipher ;


 int px_free (struct int_ctx*) ;
 int px_memset (struct int_ctx*,int ,int) ;

__attribute__((used)) static void
intctx_free(PX_Cipher *c)
{
 struct int_ctx *cx = (struct int_ctx *) c->ptr;

 if (cx)
 {
  px_memset(cx, 0, sizeof *cx);
  px_free(cx);
 }
 px_free(c);
}
