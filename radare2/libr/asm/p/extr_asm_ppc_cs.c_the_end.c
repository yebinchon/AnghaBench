
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cs_close (scalar_t__*) ;
 scalar_t__ handle ;

__attribute__((used)) static bool the_end(void *p) {
 if (handle) {
  cs_close (&handle);
  handle = 0;
 }
 return 1;
}
