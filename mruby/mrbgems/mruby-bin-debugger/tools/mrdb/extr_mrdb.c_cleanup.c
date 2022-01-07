
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _args {int argv; int srcpath; scalar_t__ rfp; } ;
typedef int mrb_state ;


 int fclose (scalar_t__) ;
 int mrb_close (int *) ;
 int mrb_free (int *,int ) ;
 int mrdb_state_free (int *) ;

__attribute__((used)) static void
cleanup(mrb_state *mrb, struct _args *args)
{
  if (args->rfp)
    fclose(args->rfp);
  if (args->srcpath)
    mrb_free(mrb, args->srcpath);
  if (args->argv)
    mrb_free(mrb, args->argv);
  mrdb_state_free(mrb);
  mrb_close(mrb);
}
