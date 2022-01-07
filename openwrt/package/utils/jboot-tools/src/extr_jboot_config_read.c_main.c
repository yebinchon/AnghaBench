
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_header {int dummy; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MAX_DATA_HEADER ;
 int VERBOSE (char*) ;
 int basename (char*) ;
 int * buffer ;
 scalar_t__ config_size ;
 int find_header (int *,scalar_t__,struct data_header**) ;
 int free (int *) ;
 int getopt (int,char**,char*) ;
 int * ifname ;
 int mac_print ;
 int * ofname ;
 void* optarg ;
 int print_data ;
 int print_data_header (struct data_header*) ;
 int print_mac (struct data_header**,int) ;
 int progname ;
 int read_file (int *) ;
 int sscanf (void*,char*,scalar_t__*) ;
 scalar_t__ start_offset ;
 int usage (int) ;
 int verbose ;
 int write_eeprom (struct data_header**,int) ;

int main(int argc, char *argv[])
{
 int ret = EXIT_FAILURE;
 int configs_counter = 0;
 struct data_header *configs_table[MAX_DATA_HEADER];
 buffer = ((void*)0);
 config_size = 0;

 progname = basename(argv[0]);
 start_offset = 0;
 mac_print = 0;
 print_data = 0;
 verbose = 0;
 ofname = ((void*)0);
 ifname = ((void*)0);

 while (1) {
  int c;

  c = getopt(argc, argv, "de:hi:mo:pv");
  if (c == -1)
   break;

  switch (c) {
  case 'm':
   mac_print = 1;
   break;
  case 'i':
   ifname = optarg;
   break;
  case 'e':
   ofname = optarg;
   break;
  case 'o':
   sscanf(optarg, "0x%x", &start_offset);
   break;
  case 'p':
   print_data = 1;
   break;
  case 'v':
   verbose = 1;
   VERBOSE("Enable verbose!");
   break;
  default:
   usage(EXIT_FAILURE);
   break;
  }
 }

 if (!ifname)
  usage(EXIT_FAILURE);

 ret = read_file(ifname);

 if (ret || config_size <= 0)
  goto out;

 configs_counter = find_header(buffer, config_size, configs_table);

 if (configs_counter <= 0)
  goto out_free_buf;

 if (print_data || verbose) {
  for (int i = 0; i < configs_counter; i++)
   print_data_header(configs_table[i]);
 }

 if (mac_print)
  print_mac(configs_table, configs_counter);

 ret = EXIT_SUCCESS;

 if (ofname)
  ret = write_eeprom(configs_table, configs_counter);

 out_free_buf:
 free(buffer);
 out:
 return ret;

}
