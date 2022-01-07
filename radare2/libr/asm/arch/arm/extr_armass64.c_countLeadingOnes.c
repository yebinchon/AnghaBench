
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int countLeadingZeros (int ) ;

__attribute__((used)) static int countLeadingOnes(ut32 x) {
 return countLeadingZeros (~x);
}
