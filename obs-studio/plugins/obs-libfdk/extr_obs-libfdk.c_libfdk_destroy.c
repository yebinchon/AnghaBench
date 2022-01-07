
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* packet_buffer; int fdkhandle; } ;
typedef TYPE_1__ libfdk_encoder_t ;


 int LOG_INFO ;
 int aacEncClose (int *) ;
 int bfree (TYPE_1__*) ;
 int blog (int ,char*) ;

__attribute__((used)) static void libfdk_destroy(void *data)
{
 libfdk_encoder_t *enc = data;

 aacEncClose(&enc->fdkhandle);

 bfree(enc->packet_buffer);
 bfree(enc);

 blog(LOG_INFO, "libfdk_aac encoder destroyed");
}
