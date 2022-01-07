
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int countTrailingZeros (int ) ;

__attribute__((used)) static int countTrailingOnes(ut32 x) {
 return countTrailingZeros (~x);
}
