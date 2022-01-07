
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int arg2; int arg1; int error; } ;
struct TYPE_5__ {scalar_t__ unique_subject; } ;
struct TYPE_6__ {TYPE_4__* db; TYPE_1__ attributes; } ;
typedef TYPE_2__ CA_DB ;


 int BIO_printf (int ,char*,int ,int ,int ) ;
 int DB_name ;
 int DB_serial ;
 int LHASH_COMP_FN (int ) ;
 int LHASH_HASH_FN (int ) ;
 int TXT_DB_create_index (TYPE_4__*,int ,int *,int ,int ) ;
 int bio_err ;
 int index_name ;
 int * index_name_qual ;
 int index_serial ;

int index_index(CA_DB *db)
{
    if (!TXT_DB_create_index(db->db, DB_serial, ((void*)0),
                             LHASH_HASH_FN(index_serial),
                             LHASH_COMP_FN(index_serial))) {
        BIO_printf(bio_err,
                   "error creating serial number index:(%ld,%ld,%ld)\n",
                   db->db->error, db->db->arg1, db->db->arg2);
        return 0;
    }

    if (db->attributes.unique_subject
        && !TXT_DB_create_index(db->db, DB_name, index_name_qual,
                                LHASH_HASH_FN(index_name),
                                LHASH_COMP_FN(index_name))) {
        BIO_printf(bio_err, "error creating name index:(%ld,%ld,%ld)\n",
                   db->db->error, db->db->arg1, db->db->arg2);
        return 0;
    }
    return 1;
}
