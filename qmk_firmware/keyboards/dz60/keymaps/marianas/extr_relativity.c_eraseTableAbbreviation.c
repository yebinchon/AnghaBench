
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* tableNameList ;
 int tableNameListLen ;

void eraseTableAbbreviation(void)
{
  for (int i = 0; i < tableNameListLen && tableNameList[i] > 0; i++)
  {
    tableNameList[i] = '\0';
  }
}
