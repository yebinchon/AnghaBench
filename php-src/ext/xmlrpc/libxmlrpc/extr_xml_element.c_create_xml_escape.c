
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int create_xml_escape(char *pString, unsigned char c)
{
  int counter = 0;

  pString[counter++] = '&';
  pString[counter++] = '#';
  if(c >= 100) {
    pString[counter++] = c / 100 + '0';
    c = c % 100;
  }
  pString[counter++] = c / 10 + '0';
  c = c % 10;

  pString[counter++] = c + '0';
  pString[counter++] = ';';
  return counter;
}
