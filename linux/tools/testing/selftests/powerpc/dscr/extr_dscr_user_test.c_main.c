
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dscr_user ;
 int test_harness (int ,char*) ;

int main(int argc, char *argv[])
{
 return test_harness(dscr_user, "dscr_user_test");
}
