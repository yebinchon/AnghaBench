
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ cat_ver; } ;
struct TYPE_21__ {int major_version; TYPE_1__ controldata; } ;
struct TYPE_20__ {scalar_t__ check; } ;


 int GET_MAJOR_VERSION (int ) ;
 scalar_t__ JSONB_FORMAT_CHANGE_CAT_VER ;
 int check_for_isn_and_int8_passing_mismatch (TYPE_3__*) ;
 int check_for_jsonb_9_4_usage (TYPE_3__*) ;
 int check_for_pg_role_prefix (TYPE_3__*) ;
 int check_for_prepared_transactions (TYPE_3__*) ;
 int check_for_reg_data_type_usage (TYPE_3__*) ;
 int check_for_tables_with_oids (TYPE_3__*) ;
 int check_is_install_user (TYPE_3__*) ;
 int check_proper_datallowconn (TYPE_3__*) ;
 int generate_old_dump () ;
 int get_db_and_rel_infos (TYPE_3__*) ;
 int get_loadable_libraries () ;
 int init_tablespaces () ;
 int new_9_0_populate_pg_largeobject_metadata (TYPE_3__*,int) ;
 int old_11_check_for_sql_identifier_data_type_usage (TYPE_3__*) ;
 int old_9_3_check_for_line_data_type_usage (TYPE_3__*) ;
 int old_9_6_check_for_unknown_data_type_usage (TYPE_3__*) ;
 int old_9_6_invalidate_hash_indexes (TYPE_3__*,int) ;
 TYPE_3__ old_cluster ;
 int start_postmaster (TYPE_3__*,int) ;
 int stop_postmaster (int) ;
 TYPE_2__ user_opts ;

void
check_and_dump_old_cluster(bool live_check)
{


 if (!live_check)
  start_postmaster(&old_cluster, 1);


 get_db_and_rel_infos(&old_cluster);

 init_tablespaces();

 get_loadable_libraries();





 check_is_install_user(&old_cluster);
 check_proper_datallowconn(&old_cluster);
 check_for_prepared_transactions(&old_cluster);
 check_for_reg_data_type_usage(&old_cluster);
 check_for_isn_and_int8_passing_mismatch(&old_cluster);





 if (GET_MAJOR_VERSION(old_cluster.major_version) <= 1100)
  check_for_tables_with_oids(&old_cluster);






 if (GET_MAJOR_VERSION(old_cluster.major_version) <= 1100)
  old_11_check_for_sql_identifier_data_type_usage(&old_cluster);





 if (GET_MAJOR_VERSION(old_cluster.major_version) <= 906)
 {
  old_9_6_check_for_unknown_data_type_usage(&old_cluster);
  if (user_opts.check)
   old_9_6_invalidate_hash_indexes(&old_cluster, 1);
 }


 if (GET_MAJOR_VERSION(old_cluster.major_version) <= 905)
  check_for_pg_role_prefix(&old_cluster);

 if (GET_MAJOR_VERSION(old_cluster.major_version) == 904 &&
  old_cluster.controldata.cat_ver < JSONB_FORMAT_CHANGE_CAT_VER)
  check_for_jsonb_9_4_usage(&old_cluster);


 if (GET_MAJOR_VERSION(old_cluster.major_version) <= 903)
  old_9_3_check_for_line_data_type_usage(&old_cluster);


 if (GET_MAJOR_VERSION(old_cluster.major_version) <= 804)
  new_9_0_populate_pg_largeobject_metadata(&old_cluster, 1);





 if (!user_opts.check)
  generate_old_dump();

 if (!live_check)
  stop_postmaster(0);
}
