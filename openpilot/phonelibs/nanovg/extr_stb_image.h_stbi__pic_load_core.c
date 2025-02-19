
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stbi_uc ;
struct TYPE_2__ {int size; int type; int channel; } ;
typedef TYPE_1__ stbi__pic_packet ;
typedef int stbi__context ;
typedef int packets ;


 scalar_t__ stbi__at_eof (int *) ;
 int stbi__copyval (int,int*,int*) ;
 int* stbi__errpuc (char*,char*) ;
 int stbi__get16be (int *) ;
 void* stbi__get8 (int *) ;
 int stbi__readval (int *,int,int*) ;

__attribute__((used)) static stbi_uc *stbi__pic_load_core(stbi__context *s,int width,int height,int *comp, stbi_uc *result)
{
   int act_comp=0,num_packets=0,y,chained;
   stbi__pic_packet packets[10];



   do {
      stbi__pic_packet *packet;

      if (num_packets==sizeof(packets)/sizeof(packets[0]))
         return stbi__errpuc("bad format","too many packets");

      packet = &packets[num_packets++];

      chained = stbi__get8(s);
      packet->size = stbi__get8(s);
      packet->type = stbi__get8(s);
      packet->channel = stbi__get8(s);

      act_comp |= packet->channel;

      if (stbi__at_eof(s)) return stbi__errpuc("bad file","file too short (reading packets)");
      if (packet->size != 8) return stbi__errpuc("bad format","packet isn't 8bpp");
   } while (chained);

   *comp = (act_comp & 0x10 ? 4 : 3);

   for(y=0; y<height; ++y) {
      int packet_idx;

      for(packet_idx=0; packet_idx < num_packets; ++packet_idx) {
         stbi__pic_packet *packet = &packets[packet_idx];
         stbi_uc *dest = result+y*width*4;

         switch (packet->type) {
            default:
               return stbi__errpuc("bad format","packet has bad compression type");

            case 0: {
               int x;

               for(x=0;x<width;++x, dest+=4)
                  if (!stbi__readval(s,packet->channel,dest))
                     return 0;
               break;
            }

            case 1:
               {
                  int left=width, i;

                  while (left>0) {
                     stbi_uc count,value[4];

                     count=stbi__get8(s);
                     if (stbi__at_eof(s)) return stbi__errpuc("bad file","file too short (pure read count)");

                     if (count > left)
                        count = (stbi_uc) left;

                     if (!stbi__readval(s,packet->channel,value)) return 0;

                     for(i=0; i<count; ++i,dest+=4)
                        stbi__copyval(packet->channel,dest,value);
                     left -= count;
                  }
               }
               break;

            case 2: {
               int left=width;
               while (left>0) {
                  int count = stbi__get8(s), i;
                  if (stbi__at_eof(s)) return stbi__errpuc("bad file","file too short (mixed read count)");

                  if (count >= 128) {
                     stbi_uc value[4];

                     if (count==128)
                        count = stbi__get16be(s);
                     else
                        count -= 127;
                     if (count > left)
                        return stbi__errpuc("bad file","scanline overrun");

                     if (!stbi__readval(s,packet->channel,value))
                        return 0;

                     for(i=0;i<count;++i, dest += 4)
                        stbi__copyval(packet->channel,dest,value);
                  } else {
                     ++count;
                     if (count>left) return stbi__errpuc("bad file","scanline overrun");

                     for(i=0;i<count;++i, dest+=4)
                        if (!stbi__readval(s,packet->channel,dest))
                           return 0;
                  }
                  left-=count;
               }
               break;
            }
         }
      }
   }

   return result;
}
