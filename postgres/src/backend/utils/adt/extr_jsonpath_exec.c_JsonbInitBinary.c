
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int root; } ;
struct TYPE_9__ {int len; int * data; } ;
struct TYPE_10__ {TYPE_1__ binary; } ;
struct TYPE_11__ {TYPE_2__ val; int type; } ;
typedef TYPE_3__ JsonbValue ;
typedef TYPE_4__ Jsonb ;


 int VARSIZE_ANY_EXHDR (TYPE_4__*) ;
 int jbvBinary ;

__attribute__((used)) static JsonbValue *
JsonbInitBinary(JsonbValue *jbv, Jsonb *jb)
{
 jbv->type = jbvBinary;
 jbv->val.binary.data = &jb->root;
 jbv->val.binary.len = VARSIZE_ANY_EXHDR(jb);

 return jbv;
}
