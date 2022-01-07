
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_multi {char const* client_reason; } ;



__attribute__((used)) static inline const char *
tls_client_reason(struct tls_multi *multi)
{
    return multi->client_reason;
}
