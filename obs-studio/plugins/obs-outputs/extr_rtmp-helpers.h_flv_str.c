
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* av_val; int av_len; } ;
typedef TYPE_1__ AVal ;


 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline AVal *flv_str(AVal *out, const char *str)
{
 out->av_val = (char *)str;
 out->av_len = (int)strlen(str);
 return out;
}
