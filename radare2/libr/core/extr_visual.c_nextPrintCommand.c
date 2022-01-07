
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRINT_HEX_FORMATS ;
 int current0format ;
 int currentFormat ;

__attribute__((used)) static void nextPrintCommand(void) {
 current0format++;
 current0format %= PRINT_HEX_FORMATS;
 currentFormat = current0format;
}
