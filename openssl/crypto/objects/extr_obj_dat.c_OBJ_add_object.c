
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int type; TYPE_1__* obj; } ;
struct TYPE_11__ {scalar_t__ length; int flags; int nid; int * ln; int * sn; int * data; } ;
typedef TYPE_1__ ASN1_OBJECT ;
typedef TYPE_2__ ADDED_OBJ ;


 size_t ADDED_DATA ;
 size_t ADDED_LNAME ;
 size_t ADDED_NID ;
 size_t ADDED_SNAME ;
 int ASN1_OBJECT_FLAG_DYNAMIC ;
 int ASN1_OBJECT_FLAG_DYNAMIC_DATA ;
 int ASN1_OBJECT_FLAG_DYNAMIC_STRINGS ;
 int ASN1_OBJECT_free (TYPE_1__*) ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_undef ;
 int OBJ_F_OBJ_ADD_OBJECT ;
 TYPE_1__* OBJ_dup (TYPE_1__ const*) ;
 int OBJerr (int ,int ) ;
 int OPENSSL_free (TYPE_2__*) ;
 TYPE_2__* OPENSSL_malloc (int) ;
 int * added ;
 int init_added () ;
 TYPE_2__* lh_ADDED_OBJ_insert (int *,TYPE_2__*) ;

int OBJ_add_object(const ASN1_OBJECT *obj)
{
    ASN1_OBJECT *o;
    ADDED_OBJ *ao[4] = { ((void*)0), ((void*)0), ((void*)0), ((void*)0) }, *aop;
    int i;

    if (added == ((void*)0))
        if (!init_added())
            return 0;
    if ((o = OBJ_dup(obj)) == ((void*)0))
        goto err;
    if ((ao[ADDED_NID] = OPENSSL_malloc(sizeof(*ao[0]))) == ((void*)0))
        goto err2;
    if ((o->length != 0) && (obj->data != ((void*)0)))
        if ((ao[ADDED_DATA] = OPENSSL_malloc(sizeof(*ao[0]))) == ((void*)0))
            goto err2;
    if (o->sn != ((void*)0))
        if ((ao[ADDED_SNAME] = OPENSSL_malloc(sizeof(*ao[0]))) == ((void*)0))
            goto err2;
    if (o->ln != ((void*)0))
        if ((ao[ADDED_LNAME] = OPENSSL_malloc(sizeof(*ao[0]))) == ((void*)0))
            goto err2;

    for (i = ADDED_DATA; i <= ADDED_NID; i++) {
        if (ao[i] != ((void*)0)) {
            ao[i]->type = i;
            ao[i]->obj = o;
            aop = lh_ADDED_OBJ_insert(added, ao[i]);

            OPENSSL_free(aop);
        }
    }
    o->flags &=
        ~(ASN1_OBJECT_FLAG_DYNAMIC | ASN1_OBJECT_FLAG_DYNAMIC_STRINGS |
          ASN1_OBJECT_FLAG_DYNAMIC_DATA);

    return o->nid;
 err2:
    OBJerr(OBJ_F_OBJ_ADD_OBJECT, ERR_R_MALLOC_FAILURE);
 err:
    for (i = ADDED_DATA; i <= ADDED_NID; i++)
        OPENSSL_free(ao[i]);
    ASN1_OBJECT_free(o);
    return NID_undef;
}
