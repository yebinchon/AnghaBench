
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* buf_ptr; } ;


 scalar_t__ CH_EOB ;
 scalar_t__ ch ;
 TYPE_1__* file ;
 scalar_t__ handle_eob () ;

void inp(void)
{
 ch = *(++(file->buf_ptr));

 if (ch == CH_EOB) {
  ch = handle_eob ();
 }
}
