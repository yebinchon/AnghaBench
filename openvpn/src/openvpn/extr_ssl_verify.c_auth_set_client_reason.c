
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_multi {int * client_reason; } ;


 int free (int *) ;
 int * string_alloc (char const*,int *) ;
 scalar_t__ strlen (char const*) ;

void
auth_set_client_reason(struct tls_multi* multi, const char* client_reason)
{
    if (multi->client_reason)
    {
        free(multi->client_reason);
        multi->client_reason = ((void*)0);
    }
    if (client_reason && strlen(client_reason))
    {
        multi->client_reason = string_alloc(client_reason, ((void*)0));
    }
}
