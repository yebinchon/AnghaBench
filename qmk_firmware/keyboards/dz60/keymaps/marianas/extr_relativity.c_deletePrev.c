
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_BSPC ;
 int* charCount ;
 size_t countPointer ;
 int register_code (int ) ;
 int* tableNameList ;
 int tableNameListLen ;
 int unregister_code (int ) ;

void deletePrev(void)
{
  if (countPointer == 0 && charCount[countPointer] == 0)
    return;
  for (int i = 0; i < charCount[countPointer]; i++)
  {
      register_code(KC_BSPC);
      unregister_code(KC_BSPC);
  }
  charCount[countPointer] = 0;
  int i = 1;
  for (;i < tableNameListLen-1; i++)
  {
    if (tableNameList[i] == 0x0)
    {
      break;
    }
  }
  tableNameList[i-1] = 0x0;
  if (countPointer > 0)
  {
    countPointer--;
  }
}
