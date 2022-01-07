
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ ENOENT ;
 int LOG ;
 scalar_t__ errno ;
 scalar_t__ stat (char const*,struct stat*) ;
 int unlink_if_exists_fname ;
 int walkdir (char const*,int ,int,int ) ;

void
PathNameDeleteTemporaryDir(const char *dirname)
{
 struct stat statbuf;


 if (stat(dirname, &statbuf) != 0 && errno == ENOENT)
  return;
 walkdir(dirname, unlink_if_exists_fname, 0, LOG);
}
