
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lavf_priv {TYPE_1__* avif; } ;
struct TYPE_2__ {char* name; } ;


 int memcmp (char const*,char const*,int) ;
 char* strchr (char const*,char) ;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool matches_avinputformat_name(struct lavf_priv *priv,
                                       const char *name)
{
    const char *avifname = priv->avif->name;
    while (1) {
        const char *next = strchr(avifname, ',');
        if (!next)
            return !strcmp(avifname, name);
        int len = next - avifname;
        if (len == strlen(name) && !memcmp(avifname, name, len))
            return 1;
        avifname = next + 1;
    }
}
