
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct options {int dummy; } ;
struct fuse_args {int argv; int argc; } ;
struct TYPE_4__ {char* mdd; } ;


 struct fuse_args FUSE_ARGS_INIT (int,char**) ;
 int R_OK ;
 int W_OK ;
 int X_OK ;
 int access (char*,int) ;
 int errno ;
 int fprintf (int ,char*,char*,...) ;
 int fuse_main (int ,int ,int *,int *) ;
 int fuse_opt_free_args (struct fuse_args*) ;
 int fuse_opt_parse (struct fuse_args*,TYPE_1__*,int ,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__ options ;
 int pifs_ops ;
 int pifs_opts ;
 int stderr ;
 char* strerror (int ) ;

int main (int argc, char *argv[])
{
  int ret;
  struct fuse_args args = FUSE_ARGS_INIT(argc, argv);

  memset(&options, 0, sizeof(struct options));
  if (fuse_opt_parse(&args, &options, pifs_opts, ((void*)0)) == -1) {
    return -1;
  }

  if (!options.mdd) {
    fprintf(stderr,
            "%s: Metadata directory must be specified with -o mdd=<directory>\n",
            argv[0]);
    return -1;
  }

  if (access(options.mdd, R_OK | W_OK | X_OK) == -1) {
    fprintf(stderr, "%s: Cannot access metadata directory '%s': %s\n",
            argv[0], options.mdd, strerror(errno));
    return -1;
  }

  ret = fuse_main(args.argc, args.argv, &pifs_ops, ((void*)0));
  fuse_opt_free_args(&args);
  return ret;
}
