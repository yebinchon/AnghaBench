
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct encoder_context {int twopass_bytebuffer; int encoder; } ;


 int avcodec_free_context (int *) ;
 int free_stream (int ) ;

__attribute__((used)) static void encoder_destroy(void *ptr)
{
    struct encoder_context *p = ptr;

    avcodec_free_context(&p->encoder);
    free_stream(p->twopass_bytebuffer);
}
