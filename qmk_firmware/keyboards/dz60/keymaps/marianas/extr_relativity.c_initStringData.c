
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 scalar_t__* charCount ;
 int charCountLen ;
 scalar_t__* macroTaps ;
 int macroTapsLen ;
 void* malloc (int) ;
 scalar_t__* tableNameList ;
 int tableNameListLen ;

void initStringData()
{
  if (macroTaps == 0)
  {
    macroTaps = malloc(macroTapsLen*sizeof(uint16_t));
    for(int i = 0; i < macroTapsLen; i++)
    {
      macroTaps[i] = 0;
    }
  }
  if (tableNameList == 0)
  {
    tableNameList = malloc(tableNameListLen*sizeof(char));
    for(int i = 0; i < tableNameListLen; i++)
    {
      tableNameList[i] = 0;
    }
  }
  if (charCount == 0)
  {
    charCount = malloc(charCountLen*sizeof(uint8_t));
    for (int i = 0; i < charCountLen; i++)
    {
      charCount[i] = 0;
    }
  }
}
