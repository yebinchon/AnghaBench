
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* value; struct TYPE_4__* name; } ;
typedef TYPE_1__ INFOPAIR ;


 int OPENSSL_free (TYPE_1__*) ;

__attribute__((used)) static void free_infopair(INFOPAIR *pair)
{
    OPENSSL_free(pair->name);
    OPENSSL_free(pair->value);
    OPENSSL_free(pair);
}
