
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr, "Usage: vsock_diag_test [--help] [--control-host=<host>] --control-port=<port> --mode=client|server --peer-cid=<cid>\n"
  "\n"
  "  Server: vsock_diag_test --control-port=1234 --mode=server --peer-cid=3\n"
  "  Client: vsock_diag_test --control-host=192.168.0.1 --control-port=1234 --mode=client --peer-cid=2\n"
  "\n"
  "Run vsock_diag.ko tests.  Must be launched in both\n"
  "guest and host.  One side must use --mode=client and\n"
  "the other side must use --mode=server.\n"
  "\n"
  "A TCP control socket connection is used to coordinate tests\n"
  "between the client and the server.  The server requires a\n"
  "listen address and the client requires an address to\n"
  "connect to.\n"
  "\n"
  "The CID of the other side must be given with --peer-cid=<cid>.\n");
 exit(EXIT_FAILURE);
}
