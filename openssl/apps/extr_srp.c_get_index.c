
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* db; } ;
struct TYPE_4__ {int data; } ;
typedef TYPE_2__ CA_DB ;


 char DB_SRP_INDEX ;
 size_t DB_srpid ;
 size_t DB_srptype ;
 int sk_OPENSSL_PSTRING_num (int ) ;
 char** sk_OPENSSL_PSTRING_value (int ,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int get_index(CA_DB *db, char *id, char type)
{
    char **pp;
    int i;
    if (id == ((void*)0))
        return -1;
    if (type == DB_SRP_INDEX) {
        for (i = 0; i < sk_OPENSSL_PSTRING_num(db->db->data); i++) {
            pp = sk_OPENSSL_PSTRING_value(db->db->data, i);
            if (pp[DB_srptype][0] == DB_SRP_INDEX
                && strcmp(id, pp[DB_srpid]) == 0)
                return i;
        }
    } else {
        for (i = 0; i < sk_OPENSSL_PSTRING_num(db->db->data); i++) {
            pp = sk_OPENSSL_PSTRING_value(db->db->data, i);

            if (pp[DB_srptype][0] != DB_SRP_INDEX
                && strcmp(id, pp[DB_srpid]) == 0)
                return i;
        }
    }

    return -1;
}
