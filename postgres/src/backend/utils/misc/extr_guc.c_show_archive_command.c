
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* XLogArchiveCommand ;
 scalar_t__ XLogArchivingActive () ;

__attribute__((used)) static const char *
show_archive_command(void)
{
 if (XLogArchivingActive())
  return XLogArchiveCommand;
 else
  return "(disabled)";
}
