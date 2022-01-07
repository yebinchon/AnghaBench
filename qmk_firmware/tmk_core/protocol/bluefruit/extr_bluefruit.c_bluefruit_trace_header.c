
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintf (char*) ;

__attribute__((used)) static void bluefruit_trace_header() {
    dprintf("+------------------------------------+\n");
    dprintf("| HID report to Bluefruit via serial |\n");
    dprintf("+------------------------------------+\n|");
}
