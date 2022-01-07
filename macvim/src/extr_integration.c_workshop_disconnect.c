
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XtRemoveInput (scalar_t__) ;
 int close (int) ;
 scalar_t__ inputHandler ;
 int sd ;

void workshop_disconnect()
{





 XtRemoveInput(inputHandler);
 close(sd);
 inputHandler = 0;
 sd = -1;

}
