
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;







 int S_IFMT ;



__attribute__((used)) static char get_fileind(mode_t mode)
{
 char c = '\0';

 switch (mode & S_IFMT) {
 case 129:
  c = '-';
  break;
 case 132:
  c = 'd';
  break;
 case 130:
  c = 'l';
  break;
 case 128:
  c = 's';
  break;
 case 131:
  c = 'p';
  break;
 case 134:
  c = 'b';
  break;
 case 133:
  c = 'c';
  break;
 default:
  c = '?';
  break;
 }

 return c;
}
