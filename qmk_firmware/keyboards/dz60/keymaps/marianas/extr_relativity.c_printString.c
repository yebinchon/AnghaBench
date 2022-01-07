
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * charCount ;
 size_t countPointer ;
 int send_char (char) ;

void printString(char* str)
{

  if (str[0] != '\0')
  {
    int i = 0;
    while (1)
    {
      if (str[i] == 0)
      {
        break;
      }
      send_char(str[i++]);
      charCount[countPointer]++;
    }
  }
}
