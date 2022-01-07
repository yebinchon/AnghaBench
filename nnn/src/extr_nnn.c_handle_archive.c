
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ATOOL ;
 size_t BSDTAR ;
 int F_NORMAL ;
 size_t TAR ;
 int TRUE ;
 size_t UNZIP ;
 int exitcurses () ;
 int get_output (int *,int ,char*,char*,char*,int ) ;
 scalar_t__ getutil (char*) ;
 scalar_t__ is_suffix (char*,char*) ;
 int refresh () ;
 int spawn (char*,char*,char*,char const*,int ) ;
 char** utils ;

__attribute__((used)) static void handle_archive(char *fpath, const char *dir, char op)
{
 char arg[] = "-tvf";
 char *util;

 if (getutil(utils[ATOOL])) {
  util = utils[ATOOL];
  arg[1] = op;
  arg[2] = '\0';
 } else if (getutil(utils[BSDTAR])) {
  util = utils[BSDTAR];
  if (op == 'x')
   arg[1] = op;
 } else if (is_suffix(fpath, ".zip")) {
  util = utils[UNZIP];
  arg[1] = (op == 'l') ? 'v' : '\0';
  arg[2] = '\0';
 } else {
  util = utils[TAR];
  if (op == 'x')
   arg[1] = op;
 }

 if (op == 'x') {
  spawn(util, arg, fpath, dir, F_NORMAL);
 } else {
  exitcurses();
  get_output(((void*)0), 0, util, arg, fpath, TRUE);
  refresh();
 }
}
