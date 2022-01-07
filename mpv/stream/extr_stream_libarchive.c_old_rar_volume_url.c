
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;


 int BSTR_P (struct bstr) ;
 char* talloc_asprintf (void*,char const*,int ,char,int) ;

__attribute__((used)) static char *old_rar_volume_url(void *ctx, const char *format,
                                struct bstr base, int index)
{
    return talloc_asprintf(ctx, format, BSTR_P(base),
                           'r' + index / 100, index % 100);
}
