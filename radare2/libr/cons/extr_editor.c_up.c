
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _n ;
 int setnewline (int) ;

__attribute__((used)) static int up(void *n) {
 int old = _n;
 if (_n > 0) {
  _n--;
 }
 setnewline (old);
 return -1;
}
