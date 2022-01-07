
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_repack {scalar_t__ packet_buffer; } ;


 int bfree (scalar_t__) ;
 int memset (struct audio_repack*,int ,int) ;

void audio_repack_free(struct audio_repack *repack)
{
 if (repack->packet_buffer)
  bfree(repack->packet_buffer);

 memset(repack, 0, sizeof(*repack));
}
