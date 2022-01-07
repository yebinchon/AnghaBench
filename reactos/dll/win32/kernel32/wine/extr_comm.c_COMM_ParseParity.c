
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPCWSTR ;
typedef int * LPBYTE ;


 int EVENPARITY ;
 int MARKPARITY ;
 int NOPARITY ;
 int ODDPARITY ;
 int SPACEPARITY ;
 int toupperW (int ) ;

__attribute__((used)) static LPCWSTR COMM_ParseParity(LPCWSTR ptr, LPBYTE lpparity)
{




 switch(toupperW(*ptr++))
 {
 case 'E':
  *lpparity = EVENPARITY;
  break;
 case 'M':
  *lpparity = MARKPARITY;
  break;
 case 'N':
  *lpparity = NOPARITY;
  break;
 case 'O':
  *lpparity = ODDPARITY;
  break;
 case 'S':
  *lpparity = SPACEPARITY;
  break;
 default:
  return ((void*)0);
 }

 return ptr;
}
