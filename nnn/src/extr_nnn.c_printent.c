
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int uint ;
struct entry {int mode; int flags; int name; } ;


 int A_REVERSE ;
 int FILE_SELECTED ;





 int S_IFMT ;


 int addch (char) ;
 int addwstr (int *) ;
 int attroff (int ) ;
 int attron (int ) ;
 int resetdircolor (int) ;
 int unescape (int ,int ,int **) ;

__attribute__((used)) static void printent(const struct entry *ent, int sel, uint namecols)
{
 wchar_t *wstr;
 char ind = '\0';

 switch (ent->mode & S_IFMT) {
 case 129:
  if (ent->mode & 0100)
   ind = '*';
  break;
 case 132:
  ind = '/';
  break;
 case 130:
  ind = '@';
  break;
 case 128:
  ind = '=';
  break;
 case 131:
  ind = '|';
  break;
 case 134:
 case 133:
  break;
 default:
  ind = '?';
  break;
 }

 if (!ind)
  ++namecols;

 unescape(ent->name, namecols, &wstr);


 resetdircolor(ent->flags);

 if (sel)
  attron(A_REVERSE);

 addch((ent->flags & FILE_SELECTED) ? '+' : ' ');
 addwstr(wstr);
 if (ind)
  addch(ind);
 addch('\n');

 if (sel)
  attroff(A_REVERSE);
}
