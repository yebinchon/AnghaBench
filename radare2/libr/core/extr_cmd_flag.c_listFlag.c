
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFlagItem ;


 int r_list_append (void*,int *) ;

__attribute__((used)) static bool listFlag(RFlagItem *flag, void *user) {
 r_list_append (user, flag);
 return 1;
}
