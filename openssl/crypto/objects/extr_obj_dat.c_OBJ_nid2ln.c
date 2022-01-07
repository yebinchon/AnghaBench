
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nid; char const* ln; } ;
struct TYPE_7__ {TYPE_1__* obj; int type; } ;
struct TYPE_6__ {int nid; char const* ln; } ;
typedef TYPE_1__ ASN1_OBJECT ;
typedef TYPE_2__ ADDED_OBJ ;


 int ADDED_NID ;
 int NID_undef ;
 int NUM_NID ;
 int OBJ_F_OBJ_NID2LN ;
 int OBJ_R_UNKNOWN_NID ;
 int OBJerr (int ,int ) ;
 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_init_crypto (int ,int *) ;
 int * added ;
 TYPE_2__* lh_ADDED_OBJ_retrieve (int *,TYPE_2__*) ;
 TYPE_3__* nid_objs ;

const char *OBJ_nid2ln(int n)
{
    ADDED_OBJ ad, *adp;
    ASN1_OBJECT ob;

    if ((n >= 0) && (n < NUM_NID)) {
        if ((n != NID_undef) && (nid_objs[n].nid == NID_undef)) {
            OBJerr(OBJ_F_OBJ_NID2LN, OBJ_R_UNKNOWN_NID);
            return ((void*)0);
        }
        return nid_objs[n].ln;
    }


    OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CONFIG, ((void*)0));

    if (added == ((void*)0))
        return ((void*)0);

    ad.type = ADDED_NID;
    ad.obj = &ob;
    ob.nid = n;
    adp = lh_ADDED_OBJ_retrieve(added, &ad);
    if (adp != ((void*)0))
        return adp->obj->ln;

    OBJerr(OBJ_F_OBJ_NID2LN, OBJ_R_UNKNOWN_NID);
    return ((void*)0);
}
