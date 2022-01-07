
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int time_stamp; int event; } ;
typedef TYPE_1__ zend_perf_jitdump_record ;
typedef int rec ;


 scalar_t__ MAP_FAILED ;
 int ZEND_PERF_JITDUMP_RECORD_CLOSE ;
 int _SC_PAGESIZE ;
 int close (scalar_t__) ;
 scalar_t__ jitdump_fd ;
 scalar_t__ jitdump_mem ;
 int munmap (scalar_t__,int ) ;
 int sysconf (int ) ;
 int zend_perf_timestamp () ;
 int zend_quiet_write (scalar_t__,TYPE_1__*,int) ;

__attribute__((used)) static void zend_jit_perf_jitdump_close(void)
{
 if (jitdump_fd >= 0) {
  zend_perf_jitdump_record rec;

  rec.event = ZEND_PERF_JITDUMP_RECORD_CLOSE;
  rec.size = sizeof(rec);
  rec.time_stamp = zend_perf_timestamp();
  zend_quiet_write(jitdump_fd, &rec, sizeof(rec));
  close(jitdump_fd);

  if (jitdump_mem != MAP_FAILED) {
   munmap(jitdump_mem, sysconf(_SC_PAGESIZE));
  }
 }
}
