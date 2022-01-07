
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_TEXTDOMAIN (char*) ;
 int SIGALRM ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int filename ;
 int get_progname (char*) ;
 int handle_args (int,char**) ;
 int pg_logging_init (char*) ;
 int pqsignal (int ,int ) ;
 int prepare_buf () ;
 int process_alarm ;
 int progname ;
 int set_pglocale_pgservice (char*,int ) ;
 int signal_cleanup ;
 int test_file_descriptor_sync () ;
 int test_non_sync () ;
 int test_open () ;
 int test_open_syncs () ;
 int test_sync (int) ;
 int unlink (int ) ;

int
main(int argc, char *argv[])
{
 pg_logging_init(argv[0]);
 set_pglocale_pgservice(argv[0], PG_TEXTDOMAIN("pg_test_fsync"));
 progname = get_progname(argv[0]);

 handle_args(argc, argv);


 pqsignal(SIGINT, signal_cleanup);
 pqsignal(SIGTERM, signal_cleanup);

 pqsignal(SIGALRM, process_alarm);






 prepare_buf();

 test_open();


 test_sync(1);


 test_sync(2);

 test_open_syncs();

 test_file_descriptor_sync();

 test_non_sync();

 unlink(filename);

 return 0;
}
