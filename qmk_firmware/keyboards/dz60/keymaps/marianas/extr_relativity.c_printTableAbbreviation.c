
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_char (int) ;
 int* tableNameList ;
 int tableNameListLen ;

void printTableAbbreviation(void)
{
  if (tableNameList[0] == 0)
  {
    return;
  }
  send_char(0x20);
  int i = 0;
  for (i = 0; i < tableNameListLen && tableNameList[i] > 0; i++)
  {
    if (tableNameList[i] >= 65 && tableNameList[i] <= 90)
    {
      send_char(tableNameList[i]+32);
    }
    else
    {
      send_char(tableNameList[i]);
    }
  }
  send_char(0x20);
}
