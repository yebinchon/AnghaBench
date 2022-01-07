
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int new_link_file ;
typedef int existing_file ;
struct TYPE_4__ {char* pgdata; } ;
struct TYPE_3__ {char* pgdata; } ;


 int MAXPGPATH ;
 int errno ;
 TYPE_2__ new_cluster ;
 TYPE_1__ old_cluster ;
 int pg_fatal (char*,int ) ;
 scalar_t__ pg_link_file (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int strerror (int ) ;
 int unlink (char*) ;

void
check_hard_link(void)
{
 char existing_file[MAXPGPATH];
 char new_link_file[MAXPGPATH];

 snprintf(existing_file, sizeof(existing_file), "%s/PG_VERSION", old_cluster.pgdata);
 snprintf(new_link_file, sizeof(new_link_file), "%s/PG_VERSION.linktest", new_cluster.pgdata);
 unlink(new_link_file);

 if (pg_link_file(existing_file, new_link_file) < 0)
  pg_fatal("could not create hard link between old and new data directories: %s\n"
     "In link mode the old and new data directories must be on the same file system.\n",
     strerror(errno));

 unlink(new_link_file);
}
