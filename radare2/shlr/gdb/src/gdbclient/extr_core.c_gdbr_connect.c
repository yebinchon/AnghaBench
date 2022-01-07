
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_16__ {int pkt_sz; int qC; scalar_t__ qXfer_features_read; scalar_t__ QStartNoAckMode; } ;
struct TYPE_17__ {int connected; int no_ack; scalar_t__ remote_type; TYPE_1__ stub_features; int data; scalar_t__ pid; scalar_t__ tid; int sock; } ;
typedef TYPE_2__ libgdbr_t ;


 int GDB_MAX_PKTSZ ;
 scalar_t__ GDB_REMOTE_TYPE_LLDB ;
 int QSUPPORTED_MAX_RETRIES ;
 void* R_MAX (scalar_t__,int ) ;
 scalar_t__ R_MIN (scalar_t__,int) ;
 int _isbreaked ;
 int gdbr_check_vcont (TYPE_2__*) ;
 int gdbr_connect_lldb (TYPE_2__*) ;
 int gdbr_lock_enter (TYPE_2__*) ;
 int gdbr_lock_leave (TYPE_2__*) ;
 int gdbr_read_target_xml (TYPE_2__*) ;
 scalar_t__ gdbr_select (TYPE_2__*,scalar_t__,int ) ;
 int handle_qC (TYPE_2__*) ;
 int handle_qSupported (TYPE_2__*) ;
 void* r_cons_sleep_begin () ;
 int r_cons_sleep_end (void*) ;
 int r_socket_connect_serial (int ,char const*,int,int) ;
 int r_socket_connect_tcp (int ,char const*,int ,int) ;
 char* r_sys_getenv (char*) ;
 int read_packet (TYPE_2__*,int) ;
 int reg_cache_init (TYPE_2__*) ;
 int sdb_fmt (char*,int) ;
 int send_ack (TYPE_2__*) ;
 int send_msg (TYPE_2__*,char const*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strncmp (int ,char*,int) ;
 scalar_t__ strtoul (char*,int *,int) ;

int gdbr_connect(libgdbr_t *g, const char *host, int port) {
 const char *message = "qSupported:multiprocess+;qRelocInsn+;xmlRegisters=i386";
 int ret, i;
 ret = -1;

 if (!g || !host) {
  return -1;
 }
 if (!gdbr_lock_enter (g)) {
  goto end;
 }

 g->stub_features.pkt_sz = 64;
 char *env_pktsz_str;
 ut32 env_pktsz = 0;
 if ((env_pktsz_str = r_sys_getenv ("R2_GDB_PKTSZ"))) {
  if ((env_pktsz = (ut32)strtoul (env_pktsz_str, ((void*)0), 10))) {
   g->stub_features.pkt_sz = R_MAX (env_pktsz, GDB_MAX_PKTSZ);
  }
 }
 if (*host == '/') {
  ret = r_socket_connect_serial (g->sock, host, port, 1);
 } else {
  ret = r_socket_connect_tcp (g->sock, host, sdb_fmt ("%d", port), 400);
 }
 if (!ret) {
  ret = -1;
  goto end;
 }
 if ((ret = send_ack (g)) < 0) {
  goto end;
 }
 read_packet (g, 1);
 g->connected = 1;
 void *bed = r_cons_sleep_begin ();

 for (i = 0; i < QSUPPORTED_MAX_RETRIES && !_isbreaked; i++) {
  ret = send_msg (g, message);
  if (ret < 0) {
   continue;
  }
  ret = read_packet (g, 0);
  if (ret < 0) {
   continue;
  }
  ret = handle_qSupported (g);
  if (ret < 0) {
   continue;
  }
  break;
 }
 r_cons_sleep_end (bed);
 if (_isbreaked) {
  _isbreaked = 0;
  ret = -1;
  goto end;
 }
 if (ret < 0) {
  goto end;
 }
 if (env_pktsz > 0) {
  g->stub_features.pkt_sz = R_MAX (R_MIN (env_pktsz, g->stub_features.pkt_sz), GDB_MAX_PKTSZ);
 }

 if (g->stub_features.QStartNoAckMode) {
  if ((ret = send_msg (g, "QStartNoAckMode")) < 0) {
   goto end;
  }
  read_packet (g, 0);
  if (!strncmp (g->data, "OK", 2)) {

   send_ack (g);
   g->no_ack = 1;
  }
 }
 if (g->remote_type == GDB_REMOTE_TYPE_LLDB) {
  ret = gdbr_connect_lldb (g);
  goto end;
 }

 g->stub_features.qC = 1;
 g->pid = g->tid = 0;
 if ((ret = send_msg (g, "qC")) < 0) {
  goto end;
 }
 read_packet (g, 0);
 if ((ret = handle_qC (g)) < 0) {
  g->stub_features.qC = 0;
 }

 gdbr_check_vcont (g);

 if (gdbr_select (g, g->pid, 0) < 0) {

 }

 if ((ret = send_msg (g, "Hc-1")) < 0) {
  goto end;
 }
 read_packet (g, 0);
 ret = send_ack (g);
 if (ret < 0) {
  goto end;
 }
 if (strcmp (g->data, "OK")) {

 }
 if (g->stub_features.qXfer_features_read) {
  gdbr_read_target_xml (g);
 }
 reg_cache_init (g);

 ret = 0;
end:
 gdbr_lock_leave (g);
 return ret;
}
