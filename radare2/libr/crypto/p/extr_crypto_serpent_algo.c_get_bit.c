
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;


 int eprintf (char*) ;
 int exit (int) ;

__attribute__((used)) static inline ut8 get_bit(int i, ut32 input) {
 if (i >= 32) {
  eprintf("Wrong bit asked");
  exit(1);
 }
 return (input >> i) & 1;
}
