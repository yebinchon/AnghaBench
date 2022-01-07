
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVal ;


 char* AMF_EncodeNamedString (char*,char*,int ,int ) ;
 int flv_str (int *,char const*) ;

__attribute__((used)) static inline void enc_str_val(char **enc, char *end, const char *name,
          const char *val)
{
 AVal s1, s2;
 *enc = AMF_EncodeNamedString(*enc, end, flv_str(&s1, name),
         flv_str(&s2, val));
}
