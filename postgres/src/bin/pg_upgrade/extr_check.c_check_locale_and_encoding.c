
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ db_encoding; int db_ctype; int db_name; int db_collate; } ;
typedef TYPE_1__ DbInfo ;


 int LC_COLLATE ;
 int LC_CTYPE ;
 int equivalent_locale (int ,int ,int ) ;
 int pg_encoding_to_char (scalar_t__) ;
 int pg_fatal (char*,int ,int ,int ) ;

__attribute__((used)) static void
check_locale_and_encoding(DbInfo *olddb, DbInfo *newdb)
{
 if (olddb->db_encoding != newdb->db_encoding)
  pg_fatal("encodings for database \"%s\" do not match:  old \"%s\", new \"%s\"\n",
     olddb->db_name,
     pg_encoding_to_char(olddb->db_encoding),
     pg_encoding_to_char(newdb->db_encoding));
 if (!equivalent_locale(LC_COLLATE, olddb->db_collate, newdb->db_collate))
  pg_fatal("lc_collate values for database \"%s\" do not match:  old \"%s\", new \"%s\"\n",
     olddb->db_name, olddb->db_collate, newdb->db_collate);
 if (!equivalent_locale(LC_CTYPE, olddb->db_ctype, newdb->db_ctype))
  pg_fatal("lc_ctype values for database \"%s\" do not match:  old \"%s\", new \"%s\"\n",
     olddb->db_name, olddb->db_ctype, newdb->db_ctype);
}
