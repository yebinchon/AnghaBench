
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int
usage(const char *prog)
{
 fprintf(stderr, "Usage: %s [-s <addr>] [-b <addr>] <node> <username>[:<password>] <command>\n"
  "\n"
  "\t-s <addr>:  Set the server's source address to <addr>\n"
  "\t-b <addr>:  Set the broadcast address to <addr>\n"
  "\t<node>:     Node ID (4 digits hex)\n"
  "\t<username>: Username to authenticate with\n"
  "\n"
  "\tPassing no arguments shows a list of active nodes on the network\n"
  "\n", prog);
 return -1;
}
