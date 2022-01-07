
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (int ) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int * partition ;
 int trx_offset ;

__attribute__((used)) static void otrx_extract_parse_options(int argc, char **argv) {
 int c;

 while ((c = getopt(argc, argv, "c:e:o:1:2:3:")) != -1) {
  switch (c) {
  case 'o':
   trx_offset = atoi(optarg);
   break;
  case '1':
   partition[0] = optarg;
   break;
  case '2':
   partition[1] = optarg;
   break;
  case '3':
   partition[2] = optarg;
   break;
  }
 }
}
