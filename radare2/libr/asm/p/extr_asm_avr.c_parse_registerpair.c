
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int free (char*) ;
 char* strdup (char const*) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int parse_registerpair(const char *operand) {
 int res = -1;
 char *first, *second, *op;
 int fnum, snum;

 op = strdup (operand);
 first = strtok (op, ":");

 if (!first || strlen (first) < 2) {
  free (op);
  return -1;
 }

 second = strtok (((void*)0), ":");






 if (second && strlen (second) < 2) {



  if (first[0] == 'r' && second[0] == 'r') {
   fnum = atoi(first+1);
   snum = atoi(second+1);
   if (fnum > snum && snum >= 0 && snum <= 30) {
    res = snum / 2;
   }
  } else if (first[0] >= 'x' && first[0] <= 'z'
    && second[0] >= 'x' && second[0] <= 'z'
    && first[1] == 'h' && second[1] == 'l') {

   res = (2 - ('z' - first[0])) + 12;
  }
 } else {

  if (first[0] == 'r') {
   snum = atoi(first+1);
   if (snum >= 0 && snum <= 30) {
    res = snum / 2;
   }
  } else if (first[0] >= 'x' && first[0] <= 'z') {
   res = (2 - ('z' - first[0])) + 12;
  }
 }
 free (op);
 return res;
}
