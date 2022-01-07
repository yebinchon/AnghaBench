
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
warn_on_mount_point(int error)
{
 if (error == 2)
  fprintf(stderr,
    _("It contains a dot-prefixed/invisible file, perhaps due to it being a mount point.\n"));
 else if (error == 3)
  fprintf(stderr,
    _("It contains a lost+found directory, perhaps due to it being a mount point.\n"));

 fprintf(stderr,
   _("Using a mount point directly as the data directory is not recommended.\n"
     "Create a subdirectory under the mount point.\n"));
}
