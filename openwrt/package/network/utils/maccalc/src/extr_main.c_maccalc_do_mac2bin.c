
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int mac ;


 int ERR_INVALID ;
 int ERR_IO ;
 int MAC_ADDRESS_LEN ;
 int STDOUT_FILENO ;
 int fprintf (int ,char*) ;
 int parse_mac (char const*,unsigned char*) ;
 int stderr ;
 int usage () ;
 int write (int ,unsigned char*,int) ;

__attribute__((used)) static int maccalc_do_mac2bin(int argc, const char *argv[])
{
 unsigned char mac[MAC_ADDRESS_LEN];
 ssize_t c;
 int err;

 if (argc != 1) {
  usage();
  return ERR_INVALID;
 }

 err = parse_mac(argv[0], mac);
 if (err)
  return err;

 c = write(STDOUT_FILENO, mac, sizeof(mac));
 if (c != sizeof(mac)) {
  fprintf(stderr, "failed to write to stdout\n");
  return ERR_IO;
 }

 return 0;
}
