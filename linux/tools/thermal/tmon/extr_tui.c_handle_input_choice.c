
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {char nr_cooling_dev; TYPE_1__* cdi; } ;
struct TYPE_3__ {char* type; int instance; } ;


 int diag_dev_rows () ;
 int handle_input_val (int) ;
 TYPE_2__ ptdata ;
 int snprintf (char*,int,char*,...) ;
 int write_dialogue_win (char*,int,int) ;

__attribute__((used)) static void handle_input_choice(int ch)
{
 char buf[48];
 int base = 0;
 int cdev_id = 0;

 if ((ch >= 'A' && ch <= 'A' + ptdata.nr_cooling_dev) ||
  (ch >= 'a' && ch <= 'a' + ptdata.nr_cooling_dev)) {
  base = (ch < 'a') ? 'A' : 'a';
  cdev_id = ch - base;
  if (ptdata.nr_cooling_dev == cdev_id)
   snprintf(buf, sizeof(buf), "New Target Temp:");
  else
   snprintf(buf, sizeof(buf), "New Value for %.10s-%2d: ",
    ptdata.cdi[cdev_id].type,
    ptdata.cdi[cdev_id].instance);
  write_dialogue_win(buf, diag_dev_rows() + 2, 2);
  handle_input_val(cdev_id);
 } else {
  snprintf(buf, sizeof(buf), "Invalid selection %d", ch);
  write_dialogue_win(buf, 8, 2);
 }
}
