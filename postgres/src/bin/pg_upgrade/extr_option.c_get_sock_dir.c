
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int line ;
typedef int filename ;
struct TYPE_7__ {unsigned short port; } ;
struct TYPE_6__ {int * socketdir; } ;
struct TYPE_5__ {unsigned short port; char* pgdata; int * sockdir; int major_version; } ;
typedef int FILE ;
typedef TYPE_1__ ClusterInfo ;


 unsigned short DEF_PGUPORT ;
 int GET_MAJOR_VERSION (int ) ;
 int LOCK_FILE_LINE_PORT ;
 int LOCK_FILE_LINE_SOCKET_DIR ;
 int MAXPGPATH ;
 int Max (int,int) ;
 int PG_WARNING ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 TYPE_3__ old_cluster ;
 int pg_fatal (char*,...) ;
 int pg_log (int ,char*,unsigned short,unsigned short) ;
 int * pg_strdup (char*) ;
 int pg_strip_crlf (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int sscanf (char*,char*,unsigned short*) ;
 int strerror (int ) ;
 TYPE_2__ user_opts ;

void
get_sock_dir(ClusterInfo *cluster, bool live_check)
{
 cluster->sockdir = ((void*)0);

}
