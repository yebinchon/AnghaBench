
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* IMAGETAG_CMDLINE_PACKAGE ;
 char* IMAGETAG_CMDLINE_PACKAGE_NAME ;
 char* IMAGETAG_CMDLINE_VERSION ;
 int printf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

void
imagetag_cmdline_print_version (void)
{
  printf ("%s %s\n",
     (strlen(IMAGETAG_CMDLINE_PACKAGE_NAME) ? IMAGETAG_CMDLINE_PACKAGE_NAME : IMAGETAG_CMDLINE_PACKAGE),
     IMAGETAG_CMDLINE_VERSION);
}
