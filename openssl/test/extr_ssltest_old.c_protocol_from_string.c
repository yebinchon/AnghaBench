
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t OSSL_NELEM (struct protocol_versions const*) ;





 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int protocol_from_string(const char *value)
{
    struct protocol_versions {
        const char *name;
        int version;
    };
    static const struct protocol_versions versions[] = {
        {"ssl3", 132},
        {"tls1", 128},
        {"tls1.1", 131},
        {"tls1.2", 130},
        {"tls1.3", 129},
        {"dtls1", 133},
        {"dtls1.2", 134}};
    size_t i;
    size_t n = OSSL_NELEM(versions);

    for (i = 0; i < n; i++)
        if (strcmp(versions[i].name, value) == 0)
            return versions[i].version;
    return -1;
}
