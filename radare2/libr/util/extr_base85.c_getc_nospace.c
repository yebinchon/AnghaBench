
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int getc (int *) ;
 scalar_t__ isspace (int) ;

__attribute__((used)) static int getc_nospace(FILE *f) {
 int c;
 while (isspace (c = getc (f))) {
  ;
 }
 return c;
}
