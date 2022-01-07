
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swlib_scan_arg {char const* name; struct switch_dev* head; int * ptr; } ;
struct switch_dev {int dummy; } ;


 int SWITCH_CMD_GET_SWITCH ;
 int add_switch ;
 int refcount ;
 int swlib_call (int ,int ,int *,struct swlib_scan_arg*) ;
 int swlib_priv_free () ;
 scalar_t__ swlib_priv_init () ;

struct switch_dev *
swlib_connect(const char *name)
{
 struct swlib_scan_arg arg;

 if (!refcount) {
  if (swlib_priv_init() < 0)
   return ((void*)0);
 };

 arg.head = ((void*)0);
 arg.ptr = ((void*)0);
 arg.name = name;
 swlib_call(SWITCH_CMD_GET_SWITCH, add_switch, ((void*)0), &arg);

 if (!refcount)
  swlib_priv_free();

 return arg.head;
}
