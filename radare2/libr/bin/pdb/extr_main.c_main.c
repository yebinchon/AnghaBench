
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct option {char* member_0; float member_3; int member_2; int const member_1; } ;
struct TYPE_6__ {int (* print_gvars ) (TYPE_1__*,int ,char) ;int (* print_types ) (TYPE_1__*,int ) ;int (* pdb_parse ) (TYPE_1__*) ;int file_name; } ;
typedef TYPE_1__ R_PDB ;


 int getopt_long (int,char**,char*,struct option*,int*) ;
 int init_pdb_parser (TYPE_1__*) ;

 char* optarg ;
 int print_usage () ;
 int printf (char*) ;

 int strcpy (int *,char*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*,int ) ;
 int stub3 (TYPE_1__*,int ,char) ;

int main(int argc, char **argv) {
 R_PDB pdb;

 static struct option long_options[] =
 {
  {"pdb_file", 128, 0, 'f'},
  {"print_types", 129, 0, 't'},
  {"print_globals", 128, 0, 'g'},
  {"help", 129, 0, 'h'},
  {0, 0, 0, 0}
 };

 int option_index = 0;
 int c = 0;
 char *pdb_file = 0;

 while(1) {
  c = getopt_long (argc, argv, ":f:tg:h",
       long_options, &option_index);

  if (c == -1)
   break;

  switch (c) {
  case 'f':
   pdb_file = optarg;
   strcpy (&pdb.file_name, optarg);
   if (!init_pdb_parser(&pdb)) {
    printf("initialization error of pdb parser\n");
    return 0;
   }
   pdb.pdb_parse(&pdb);
   break;
  case 't':
   pdb.print_types(&pdb, 0);
   break;
  case 'g':
   pdb.print_gvars(&pdb, 0, 'r');
   break;
  default:
   print_usage();
   return 0;
  }
 }

 return 0;
}
