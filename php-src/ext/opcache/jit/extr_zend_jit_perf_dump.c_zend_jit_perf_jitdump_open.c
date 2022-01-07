
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; int process_id; scalar_t__ flags; scalar_t__ time_stamp; int elf_mach_target; int version; int magic; } ;
typedef TYPE_1__ zend_perf_jitdump_header ;
struct TYPE_7__ {int* emagic; int machine; } ;
typedef TYPE_2__ zend_elf_header ;
typedef int path ;
typedef int jit_hdr ;
typedef int elf_hdr ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_PATHNAME ;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int PATH_MAX ;
 int PROT_EXEC ;
 int PROT_READ ;
 int ZEND_PERF_JITDUMP_HEADER_MAGIC ;
 int ZEND_PERF_JITDUMP_HEADER_VERSION ;
 int _SC_PAGESIZE ;
 int close (int) ;
 int getpid () ;
 int jitdump_fd ;
 scalar_t__ jitdump_mem ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ mmap (int *,int ,int,int ,int,int ) ;
 int open (char*,int,...) ;
 int read (int,TYPE_2__*,int) ;
 int sprintf (char*,char*,int) ;
 int sysconf (int ) ;
 int sysctl (int*,int,char*,size_t*,int *,int ) ;
 scalar_t__ zend_perf_timestamp () ;
 int zend_quiet_write (int,TYPE_1__*,int) ;

__attribute__((used)) static void zend_jit_perf_jitdump_open(void)
{
 char filename[64];
 int fd, ret;
 zend_elf_header elf_hdr;
 zend_perf_jitdump_header jit_hdr;

 sprintf(filename, "/tmp/jit-%d.dump", getpid());
 if (!zend_perf_timestamp()) {
  return;
 }


 fd = open("/proc/self/exe", O_RDONLY);
 if (fd < 0) {
  return;
 }

 ret = read(fd, &elf_hdr, sizeof(elf_hdr));
 close(fd);

 if (ret != sizeof(elf_hdr) ||
     elf_hdr.emagic[0] != 0x7f ||
     elf_hdr.emagic[1] != 'E' ||
     elf_hdr.emagic[2] != 'L' ||
     elf_hdr.emagic[3] != 'F') {
  return;
 }

 jitdump_fd = open(filename, O_CREAT | O_TRUNC | O_RDWR, 0666);
 if (jitdump_fd < 0) {
  return;
 }

 jitdump_mem = mmap(((void*)0),
   sysconf(_SC_PAGESIZE),
   PROT_READ|PROT_EXEC,
   MAP_PRIVATE, jitdump_fd, 0);

 if (jitdump_mem == MAP_FAILED) {
  close(jitdump_fd);
  jitdump_fd = -1;
  return;
 }

 memset(&jit_hdr, 0, sizeof(jit_hdr));
 jit_hdr.magic = ZEND_PERF_JITDUMP_HEADER_MAGIC;
 jit_hdr.version = ZEND_PERF_JITDUMP_HEADER_VERSION;
 jit_hdr.size = sizeof(jit_hdr);
 jit_hdr.elf_mach_target = elf_hdr.machine;
 jit_hdr.process_id = getpid();
 jit_hdr.time_stamp = zend_perf_timestamp();
 jit_hdr.flags = 0;
 zend_quiet_write(jitdump_fd, &jit_hdr, sizeof(jit_hdr));
}
