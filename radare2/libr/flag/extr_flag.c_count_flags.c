
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFlagItem ;



__attribute__((used)) static bool count_flags(RFlagItem *fi, void *user) {
 int *count = (int *)user;
 (*count)++;
 return 1;
}
