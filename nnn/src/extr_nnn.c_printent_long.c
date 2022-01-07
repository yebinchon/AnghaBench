
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int timebuf ;
struct entry {int flags; int mode; int blocks; int size; int name; int t; } ;
struct TYPE_2__ {int blkorder; } ;


 int A_REVERSE ;
 int FILE_SELECTED ;





 int S_IFMT ;


 scalar_t__ S_ISREG (int) ;
 int attroff (int ) ;
 int attron (int ) ;
 int blk_shift ;
 TYPE_1__ cfg ;
 int coolsize (int) ;
 int localtime (int *) ;
 int printw (char*,char const,char*,char*,...) ;
 int resetdircolor (int) ;
 int strftime (char*,int,char*,int ) ;
 char* unescape (int ,int ,int *) ;

__attribute__((used)) static void printent_long(const struct entry *ent, int sel, uint namecols)
{
 char timebuf[24], permbuf[4], ind1 = '\0', ind2[] = "\0\0";
 const char cp = (ent->flags & FILE_SELECTED) ? '+' : ' ';


 strftime(timebuf, sizeof(timebuf), "%F %R", localtime(&ent->t));
 timebuf[sizeof(timebuf)-1] = '\0';


 permbuf[0] = '0' + ((ent->mode >> 6) & 7);
 permbuf[1] = '0' + ((ent->mode >> 3) & 7);
 permbuf[2] = '0' + (ent->mode & 7);
 permbuf[3] = '\0';


 if (S_ISREG(ent->mode) && !(ent->mode & 0100))
  ++namecols;


 const char *pname = unescape(ent->name, namecols, ((void*)0));


 resetdircolor(ent->flags);

 if (sel)
  attron(A_REVERSE);

 switch (ent->mode & S_IFMT) {
 case 129:
  if (ent->mode & 0100)
   printw("%c%-16.16s  %s %8.8s* %s*\n", cp, timebuf, permbuf,
          coolsize(cfg.blkorder ? ent->blocks << blk_shift : ent->size), pname);
  else
   printw("%c%-16.16s  %s %8.8s  %s\n", cp, timebuf, permbuf,
          coolsize(cfg.blkorder ? ent->blocks << blk_shift : ent->size), pname);
  break;
 case 132:
  printw("%c%-16.16s  %s %8.8s  %s/\n", cp, timebuf, permbuf,
         coolsize(cfg.blkorder ? ent->blocks << blk_shift : ent->size), pname);
  break;
 case 130:
  printw("%c%-16.16s  %s        @  %s@\n", cp, timebuf, permbuf, pname);
  break;
 case 128:
  ind1 = ind2[0] = '=';
 case 131:
  if (!ind1)
   ind1 = ind2[0] = '|';
 case 134:
  if (!ind1)
   ind1 = 'b';
 case 133:
  if (!ind1)
   ind1 = 'c';
 default:
  if (!ind1)
   ind1 = ind2[0] = '?';
  printw("%c%-16.16s  %s        %c  %s%s\n", cp, timebuf, permbuf, ind1, pname, ind2);
  break;
 }

 if (sel)
  attroff(A_REVERSE);
}
