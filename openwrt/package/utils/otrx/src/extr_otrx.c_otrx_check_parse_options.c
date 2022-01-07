
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (int ) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int trx_offset ;

__attribute__((used)) static void otrx_check_parse_options(int argc, char **argv) {
 int c;

 while ((c = getopt(argc, argv, "o:")) != -1) {
  switch (c) {
  case 'o':
   trx_offset = atoi(optarg);
   break;
  }
 }
}
