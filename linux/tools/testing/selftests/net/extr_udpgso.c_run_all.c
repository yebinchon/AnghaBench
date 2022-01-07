
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase {scalar_t__ tlen; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int socklen_t ;


 scalar_t__ AF_INET ;
 int cfg_specific_test_id ;
 int run_one (struct testcase*,int,int,struct sockaddr*,int ) ;
 struct testcase* testcases_v4 ;
 struct testcase* testcases_v6 ;

__attribute__((used)) static void run_all(int fdt, int fdr, struct sockaddr *addr, socklen_t alen)
{
 struct testcase *tests, *test;

 tests = addr->sa_family == AF_INET ? testcases_v4 : testcases_v6;

 for (test = tests; test->tlen; test++) {

  if (cfg_specific_test_id == -1 ||
      cfg_specific_test_id == test - tests)
   run_one(test, fdt, fdr, addr, alen);
 }
}
