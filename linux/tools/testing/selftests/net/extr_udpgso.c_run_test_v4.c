
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; int sin_port; int sin_family; int member_0; } ;
typedef int addr ;


 int AF_INET ;
 int addr4 ;
 int cfg_port ;
 int htons (int ) ;
 int run_test (void*,int) ;

__attribute__((used)) static void run_test_v4(void)
{
 struct sockaddr_in addr = {0};

 addr.sin_family = AF_INET;
 addr.sin_port = htons(cfg_port);
 addr.sin_addr = addr4;

 run_test((void *)&addr, sizeof(addr));
}
