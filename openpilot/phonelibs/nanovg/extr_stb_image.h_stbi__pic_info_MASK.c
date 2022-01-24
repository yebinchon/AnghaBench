#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int size; int channel; void* type; } ;
typedef  TYPE_1__ stbi__pic_packet ;
typedef  int /*<<< orphan*/  stbi__context ;
typedef  int /*<<< orphan*/  packets ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(stbi__context *s, int *x, int *y, int *comp)
{
   int act_comp=0,num_packets=0,chained;
   stbi__pic_packet packets[10];

   if (!FUNC3(s,"\x53\x80\xF6\x34")) {
      FUNC4(s);
      return 0;
   }

   FUNC5(s, 88);

   *x = FUNC1(s);
   *y = FUNC1(s);
   if (FUNC0(s)) {
      FUNC4( s);
      return 0;
   }
   if ( (*x) != 0 && (1 << 28) / (*x) < (*y)) {
      FUNC4( s );
      return 0;
   }

   FUNC5(s, 8);

   do {
      stbi__pic_packet *packet;

      if (num_packets==sizeof(packets)/sizeof(packets[0]))
         return 0;

      packet = &packets[num_packets++];
      chained = FUNC2(s);
      packet->size    = FUNC2(s);
      packet->type    = FUNC2(s);
      packet->channel = FUNC2(s);
      act_comp |= packet->channel;

      if (FUNC0(s)) {
          FUNC4( s );
          return 0;
      }
      if (packet->size != 8) {
          FUNC4( s );
          return 0;
      }
   } while (chained);

   *comp = (act_comp & 0x10 ? 4 : 3);

   return 1;
}