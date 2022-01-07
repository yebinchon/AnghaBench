
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Range {char start; char end; } ;
struct TYPE_4__ {int exclude; char* chars; size_t nchars; size_t nranges; struct Range* ranges; } ;
typedef TYPE_1__ CharSet ;


 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ safe_emalloc (int,int,int ) ;

__attribute__((used)) static char * BuildCharSet(CharSet *cset, char *format)
{
 char *ch, start;
 int nranges;
 char *end;

 memset(cset, 0, sizeof(CharSet));

 ch = format;
 if (*ch == '^') {
  cset->exclude = 1;
  ch = ++format;
 }
 end = format + 1;




 if (*ch == ']') {
  ch = end++;
 }
 nranges = 0;
 while (*ch != ']') {
  if (*ch == '-') {
   nranges++;
  }
  ch = end++;
 }

 cset->chars = (char *) safe_emalloc(sizeof(char), (end - format - 1), 0);
 if (nranges > 0) {
  cset->ranges = (struct Range *) safe_emalloc(sizeof(struct Range), nranges, 0);
 } else {
  cset->ranges = ((void*)0);
 }




 cset->nchars = cset->nranges = 0;
 ch = format++;
 start = *ch;
 if (*ch == ']' || *ch == '-') {
  cset->chars[cset->nchars++] = *ch;
  ch = format++;
 }
 while (*ch != ']') {
  if (*format == '-') {




   start = *ch;
  } else if (*ch == '-') {





   if (*format == ']') {
    cset->chars[cset->nchars++] = start;
    cset->chars[cset->nchars++] = *ch;
   } else {
    ch = format++;




    if (start < *ch) {
     cset->ranges[cset->nranges].start = start;
     cset->ranges[cset->nranges].end = *ch;
    } else {
     cset->ranges[cset->nranges].start = *ch;
     cset->ranges[cset->nranges].end = start;
    }
    cset->nranges++;
   }
  } else {
   cset->chars[cset->nchars++] = *ch;
  }
  ch = format++;
 }
 return format;
}
