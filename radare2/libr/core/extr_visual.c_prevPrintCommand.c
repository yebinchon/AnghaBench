
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current0format ;
 scalar_t__ currentFormat ;

__attribute__((used)) static void prevPrintCommand(void) {
 current0format--;
 if (current0format < 0) {
  current0format = 0;
 }
 currentFormat = current0format;
}
