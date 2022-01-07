
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_BSPC ;
 int * charCount ;
 size_t countPointer ;
 int printString (char*) ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void ReplaceString(char *orig, char *repl)
{
  int i = 0;
  while((orig[i] != 0x0 && repl[i] != 0x0) && orig[i] == repl[i])
   i++;

  if(orig[i] != 0x0)
  {
    int o = i;
    while (orig[o++] != 0x0) {
      charCount[countPointer]--;
      register_code(KC_BSPC);
      unregister_code(KC_BSPC);
    }
  }
  printString(repl+i);
}
