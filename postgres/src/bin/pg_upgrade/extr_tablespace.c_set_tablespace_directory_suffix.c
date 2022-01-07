
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cat_ver; } ;
struct TYPE_5__ {TYPE_1__ controldata; int major_version_str; int tablespace_suffix; int major_version; } ;
typedef TYPE_2__ ClusterInfo ;


 int GET_MAJOR_VERSION (int ) ;
 int pg_strdup (char*) ;
 int psprintf (char*,int ,int ) ;

__attribute__((used)) static void
set_tablespace_directory_suffix(ClusterInfo *cluster)
{
 if (GET_MAJOR_VERSION(cluster->major_version) <= 804)
  cluster->tablespace_suffix = pg_strdup("");
 else
 {



  cluster->tablespace_suffix = psprintf("/PG_%s_%d",
             cluster->major_version_str,
             cluster->controldata.cat_ver);
 }
}
