
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inited; int ctx_j; void* print_level; int sock; int zctx; } ;


 void* CLOUDLOG_DEBUG ;
 void* CLOUDLOG_INFO ;
 void* CLOUDLOG_WARNING ;
 char* COMMA_VERSION ;
 int ZMQ_PUSH ;
 int cloudlog_bind_locked (char*,char*) ;
 void* getenv (char*) ;
 int json_append_member (int ,char*,int ) ;
 int json_mkbool (int) ;
 int json_mkobject () ;
 TYPE_1__ s ;
 scalar_t__ strcmp (char const*,char*) ;
 int zmq_connect (int ,char*) ;
 int zmq_ctx_new () ;
 int zmq_socket (int ,int ) ;

__attribute__((used)) static void cloudlog_init() {
  if (s.inited) return;
  s.ctx_j = json_mkobject();
  s.zctx = zmq_ctx_new();
  s.sock = zmq_socket(s.zctx, ZMQ_PUSH);
  zmq_connect(s.sock, "ipc:///tmp/logmessage");

  s.print_level = CLOUDLOG_WARNING;
  const char* print_level = getenv("LOGPRINT");
  if (print_level) {
    if (strcmp(print_level, "debug") == 0) {
      s.print_level = CLOUDLOG_DEBUG;
    } else if (strcmp(print_level, "info") == 0) {
      s.print_level = CLOUDLOG_INFO;
    } else if (strcmp(print_level, "warning") == 0) {
      s.print_level = CLOUDLOG_WARNING;
    }
  }


  char* dongle_id = getenv("DONGLE_ID");
  if (dongle_id) {
    cloudlog_bind_locked("dongle_id", dongle_id);
  }
  cloudlog_bind_locked("version", COMMA_VERSION);
  bool dirty = !getenv("CLEAN");
  json_append_member(s.ctx_j, "dirty", json_mkbool(dirty));

  s.inited = 1;
}
