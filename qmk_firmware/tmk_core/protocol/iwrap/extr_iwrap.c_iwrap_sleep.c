
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iwrap_mux_send (char*) ;

void iwrap_sleep(void) { iwrap_mux_send("SLEEP"); }
