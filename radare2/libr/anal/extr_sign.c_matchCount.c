
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_ABS (int) ;

__attribute__((used)) static int matchCount(int a, int b) {
 int c = a - b;
 int m = a / 10;
 return R_ABS (c) < m;
}
