#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct can_frame {int can_id; int can_dlc; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int CAN_EFF_FLAG ; 
 int dir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int packet_len ; 
 int /*<<< orphan*/  payload ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct can_frame*,int) ; 

void *FUNC4( void *dat ){
  int nbytes;
  struct can_frame frame;
  int s = *((int*) dat);

  while(1){
    for(int i = 0; i < 1; i ++){
    if(packet_len % 2){
      frame.can_id  = 0x8AA | CAN_EFF_FLAG;
    }else{
      frame.can_id  = 0xAA;
    }

    frame.can_dlc = packet_len;
    FUNC0(frame.data, payload, frame.can_dlc);

    nbytes = FUNC3(s, &frame, sizeof(struct can_frame));

    FUNC1("Wrote %d bytes; addr: %lx; datlen: %d\n", nbytes, frame.can_id, frame.can_dlc);

    if(dir){
      packet_len++;
      if(packet_len >= 8)
	dir = 0;
    }else{
      packet_len--;
      if(packet_len <= 0)
	dir = 1;
    }
    }
    FUNC2(2);
  }
}