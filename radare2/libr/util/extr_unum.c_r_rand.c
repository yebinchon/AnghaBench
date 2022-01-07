
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ arc4random_uniform (int) ;
 int rand () ;

__attribute__((used)) static int r_rand(int mod) {



 return rand () % mod;

}
