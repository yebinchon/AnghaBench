
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_set {struct env_item* list; } ;
struct env_item {scalar_t__ string; struct env_item* next; } ;


 int env_set_del (struct env_set*,scalar_t__) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,scalar_t__,int ) ;

void
tls_x509_clear_env(struct env_set *es)
{
    struct env_item *item = es->list;
    while (item)
    {
        struct env_item *next = item->next;
        if (item->string
            && 0 == strncmp("X509_", item->string, strlen("X509_")))
        {
            env_set_del(es, item->string);
        }
        item = next;
    }
}
