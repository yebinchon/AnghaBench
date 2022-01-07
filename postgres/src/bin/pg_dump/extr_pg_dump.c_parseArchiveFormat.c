
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArchiveMode ;
typedef int ArchiveFormat ;


 int archCustom ;
 int archDirectory ;
 int archModeAppend ;
 int archModeWrite ;
 int archNull ;
 int archTar ;
 int fatal (char*,char const*) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;

__attribute__((used)) static ArchiveFormat
parseArchiveFormat(const char *format, ArchiveMode *mode)
{
 ArchiveFormat archiveFormat;

 *mode = archModeWrite;

 if (pg_strcasecmp(format, "a") == 0 || pg_strcasecmp(format, "append") == 0)
 {

  archiveFormat = archNull;
  *mode = archModeAppend;
 }
 else if (pg_strcasecmp(format, "c") == 0)
  archiveFormat = archCustom;
 else if (pg_strcasecmp(format, "custom") == 0)
  archiveFormat = archCustom;
 else if (pg_strcasecmp(format, "d") == 0)
  archiveFormat = archDirectory;
 else if (pg_strcasecmp(format, "directory") == 0)
  archiveFormat = archDirectory;
 else if (pg_strcasecmp(format, "p") == 0)
  archiveFormat = archNull;
 else if (pg_strcasecmp(format, "plain") == 0)
  archiveFormat = archNull;
 else if (pg_strcasecmp(format, "t") == 0)
  archiveFormat = archTar;
 else if (pg_strcasecmp(format, "tar") == 0)
  archiveFormat = archTar;
 else
  fatal("invalid output format \"%s\" specified", format);
 return archiveFormat;
}
