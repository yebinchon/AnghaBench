
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int char_number; int line_number; } ;


 scalar_t__ ncontinuations ;
 TYPE_1__ pp_status ;
 int put_buffer (char*,int) ;

__attribute__((used)) static void newline(int dowrite)
{
 pp_status.line_number++;
 pp_status.char_number = 1;

 if(dowrite == -1)
  return;

 ncontinuations++;
 if(dowrite)
 {
  for(;ncontinuations; ncontinuations--)
   put_buffer("\n", 1);
 }
}
