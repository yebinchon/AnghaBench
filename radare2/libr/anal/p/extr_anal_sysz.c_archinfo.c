
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnal ;






__attribute__((used)) static int archinfo(RAnal *anal, int q) {
 switch (q) {
 case 130:
  return 2;
 case 129:
  return 4;
 case 128:
  return 2;
 }
 return 2;
}
