
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fault_handling; } ;


 int INFO ;
 int SIGNAL_HANDLER ;
 int SUCCESS ;
 int TSX ;
 scalar_t__ check_tsx () ;
 TYPE_1__ config ;
 int debug (int ,char*) ;

__attribute__((used)) static void detect_fault_handling() {
  if (check_tsx()) {
    debug(SUCCESS, "Using Intel TSX\n");
    config.fault_handling = TSX;
  } else {
    debug(INFO, "No Intel TSX, fallback to signal handler\n");
    config.fault_handling = SIGNAL_HANDLER;
  }
}
