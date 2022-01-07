
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
typedef int ut32 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {int gport; } ;
typedef TYPE_1__ RIOGprobe ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;


 int gprobe_debugoff (int *) ;
 int gprobe_debugon (int *) ;
 int gprobe_getdeviceid (int *,int ) ;
 int gprobe_getinformation (int *) ;
 int gprobe_reset (int *,int ) ;
 int gprobe_runcode (int *,int ) ;
 int printf (char*) ;
 scalar_t__ r_str_startswith (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int strtoul (char const*,int *,int) ;

__attribute__((used)) static char *__system (RIO *io, RIODesc *fd, const char *cmd) {
 RIOGprobe *gprobe;

 if (!fd || !fd->data) {
  return ((void*)0);
 }
 gprobe = (RIOGprobe *)fd->data;

 if (!cmd[0] || cmd[0] == '?' || !strcmp (cmd, "help")) {
  printf ("Usage: =!cmd args\n"
   " =!reset code\n"
   " =!debugon\n"
   " =!debugoff\n"
   " =!runcode address\n"
   " =!getdeviceid\n"
   " =!getinformation\n");
  return ((void*)0);
 }

 if (r_str_startswith (cmd, "reset") && (strlen (cmd) > 6)) {
  ut32 code = (ut32)strtoul (cmd + 6, ((void*)0), 10);

  gprobe_reset (&gprobe->gport, code);

  return ((void*)0);
 }

 if (r_str_startswith (cmd, "debugon")) {
  gprobe_debugon (&gprobe->gport);

  return ((void*)0);
 }

 if (r_str_startswith (cmd, "debugoff")) {
  gprobe_debugoff (&gprobe->gport);

  return ((void*)0);
 }

 if (r_str_startswith (cmd, "runcode") && (strlen (cmd) > 8)) {
  ut32 address = (ut32)strtoul (cmd + 8, ((void*)0), 0);

  gprobe_runcode (&gprobe->gport, address);

  return ((void*)0);
 }

 if (r_str_startswith (cmd, "getdeviceid")) {
  ut8 index = 0;

  while (!gprobe_getdeviceid (&gprobe->gport, index++)) {
  };

  return ((void*)0);
 }

 if (r_str_startswith (cmd, "getinformation")) {
  gprobe_getinformation (&gprobe->gport);

  return ((void*)0);
 }

 printf ("Try: '=!?'\n");

 return ((void*)0);
}
