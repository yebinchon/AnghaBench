
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uci_package {int dummy; } ;
struct uci_context {int dummy; } ;
struct switch_dev {char* dev_name; } ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int swlib_apply_from_uci (struct switch_dev*,struct uci_package*) ;
 struct uci_context* uci_alloc_context () ;
 int uci_free_context (struct uci_context*) ;
 int uci_load (struct uci_context*,char const*,struct uci_package**) ;
 int uci_perror (struct uci_context*,char*) ;

__attribute__((used)) static void
swconfig_load_uci(struct switch_dev *dev, const char *name)
{
 struct uci_context *ctx;
 struct uci_package *p = ((void*)0);
 int ret = -1;

 ctx = uci_alloc_context();
 if (!ctx)
  return;

 uci_load(ctx, name, &p);
 if (!p) {
  uci_perror(ctx, "Failed to load config file: ");
  goto out;
 }

 ret = swlib_apply_from_uci(dev, p);
 if (ret < 0)
  fprintf(stderr, "Failed to apply configuration for switch '%s'\n", dev->dev_name);

out:
 uci_free_context(ctx);
 exit(ret);
}
