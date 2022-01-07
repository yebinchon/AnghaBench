
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_ESC ;
 int LC_ALL ;
 int LOCALEDIR ;
 char* N_ (char*) ;
 int PACKAGE ;
 int SIGINT ;
 int bindtextdomain (int ,int ) ;
 int conf (int *,int *) ;
 int conf_get_configname () ;
 int * conf_message_callback ;
 int conf_parse (char*) ;
 int conf_read (int *) ;
 int conf_set_message_callback (int *) ;
 int fprintf (int ,char*) ;
 char* getenv (char*) ;
 int handle_exit () ;
 scalar_t__ init_dialog (int *) ;
 int rootmenu ;
 int set_config_filename (int ) ;
 int setlocale (int ,char*) ;
 int sig_handler ;
 int signal (int ,int ) ;
 int silent ;
 int single_menu_mode ;
 int stderr ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int textdomain (int ) ;

int main(int ac, char **av)
{
 char *mode;
 int res;

 setlocale(LC_ALL, "");
 bindtextdomain(PACKAGE, LOCALEDIR);
 textdomain(PACKAGE);

 signal(SIGINT, sig_handler);

 if (ac > 1 && strcmp(av[1], "-s") == 0) {
  silent = 1;

  conf_set_message_callback(((void*)0));
  av++;
 }
 conf_parse(av[1]);
 conf_read(((void*)0));

 mode = getenv("MENUCONFIG_MODE");
 if (mode) {
  if (!strcasecmp(mode, "single_menu"))
   single_menu_mode = 1;
 }

 if (init_dialog(((void*)0))) {
  fprintf(stderr, N_("Your display is too small to run Menuconfig!\n"));
  fprintf(stderr, N_("It must be at least 19 lines by 80 columns.\n"));
  return 1;
 }

 set_config_filename(conf_get_configname());
 conf_set_message_callback(conf_message_callback);
 do {
  conf(&rootmenu, ((void*)0));
  res = handle_exit();
 } while (res == KEY_ESC);

 return res;
}
