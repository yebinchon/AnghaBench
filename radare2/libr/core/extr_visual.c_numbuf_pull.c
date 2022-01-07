
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (scalar_t__*) ;
 scalar_t__* numbuf ;
 int numbuf_i ;

__attribute__((used)) static int numbuf_pull() {
 int distance = 1;
 if (numbuf_i) {
  numbuf[numbuf_i] = 0;
  distance = atoi (numbuf);
  if (!distance) {
   distance = 1;
  }
  numbuf_i = 0;
 }
 return distance;
}
