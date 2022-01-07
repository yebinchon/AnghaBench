
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 scalar_t__ YEAR_1901 ;
 scalar_t__ YEAR_1970 ;
 scalar_t__ YEAR_2038 ;
 scalar_t__ YEAR_2262 ;
 scalar_t__ YEAR_MAX ;
 int do_tests () ;
 int getopt (int,char**,char*) ;
 scalar_t__ is32bits () ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int settime (scalar_t__) ;
 scalar_t__ time (int ) ;

int main(int argc, char *argv[])
{
 int ret = 0;
 int opt, dangerous = 0;
 time_t start;


 while ((opt = getopt(argc, argv, "d")) != -1) {
  switch (opt) {
  case 'd':
   dangerous = 1;
  }
 }

 start = time(0);


 if (!settime(YEAR_1901)) {
  ret = -1;
  goto out;
 }
 if (!settime(YEAR_MAX)) {
  ret = -1;
  goto out;
 }
 if (!is32bits() && !settime(YEAR_2262)) {
  ret = -1;
  goto out;
 }


 settime(YEAR_1970);
 ret = do_tests();
 if (ret)
  goto out;

 settime(YEAR_2038 - 600);
 ret = do_tests();
 if (ret)
  goto out;


 if (is32bits() && !dangerous)
  goto out;

 settime(YEAR_2038 - 10);
 ret = do_tests();
 if (ret)
  goto out;

 settime(YEAR_2262 - 600);
 ret = do_tests();

out:

 settime(start);
 if (ret)
  return ksft_exit_fail();
 return ksft_exit_pass();
}
