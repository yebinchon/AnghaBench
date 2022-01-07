
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_DIR_MODE_GROUP ;
 int PG_DIR_MODE_OWNER ;
 int PG_FILE_MODE_GROUP ;
 int PG_FILE_MODE_OWNER ;
 int PG_MODE_MASK_GROUP ;
 int PG_MODE_MASK_OWNER ;
 int pg_dir_create_mode ;
 int pg_file_create_mode ;
 int pg_mode_mask ;

void
SetDataDirectoryCreatePerm(int dataDirMode)
{

 if ((PG_DIR_MODE_GROUP & dataDirMode) == PG_DIR_MODE_GROUP)
 {
  pg_dir_create_mode = PG_DIR_MODE_GROUP;
  pg_file_create_mode = PG_FILE_MODE_GROUP;
  pg_mode_mask = PG_MODE_MASK_GROUP;
 }

 else
 {
  pg_dir_create_mode = PG_DIR_MODE_OWNER;
  pg_file_create_mode = PG_FILE_MODE_OWNER;
  pg_mode_mask = PG_MODE_MASK_OWNER;
 }
}
