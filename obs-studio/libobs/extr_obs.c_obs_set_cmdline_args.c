
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int argc; char** argv; } ;


 char** bmalloc (int) ;
 TYPE_1__ cmdline_args ;
 int memcpy (char*,char const* const,size_t) ;
 int strlen (char const* const) ;

void obs_set_cmdline_args(int argc, const char *const *argv)
{
 char *data;
 size_t len;
 int i;


 if (cmdline_args.argc)
  return;

 cmdline_args.argc = argc;


 len = 0;
 for (i = 0; i < argc; i++)
  len += strlen(argv[i]) + 1;

 cmdline_args.argv = bmalloc(sizeof(char *) * (argc + 1) + len);
 data = (char *)cmdline_args.argv + sizeof(char *) * (argc + 1);

 for (i = 0; i < argc; i++) {
  cmdline_args.argv[i] = data;
  len = strlen(argv[i]) + 1;
  memcpy(data, argv[i], len);
  data += len;
 }

 cmdline_args.argv[argc] = ((void*)0);
}
