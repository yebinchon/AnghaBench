
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int PG_TEXTDOMAIN (char*) ;
 int get_progname (char*) ;
 int handle_args (int,char**) ;
 int output (int ) ;
 int progname ;
 int set_pglocale_pgservice (char*,int ) ;
 int test_duration ;
 int test_timing (int ) ;

int
main(int argc, char *argv[])
{
 uint64 loop_count;

 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("pg_test_timing"));
 progname = get_progname(argv[0]);

 handle_args(argc, argv);

 loop_count = test_timing(test_duration);

 output(loop_count);

 return 0;
}
