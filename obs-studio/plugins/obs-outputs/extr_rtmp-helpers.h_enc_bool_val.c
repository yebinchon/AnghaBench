
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVal ;


 char* AMF_EncodeNamedBoolean (char*,char*,int ,int) ;
 int flv_str (int *,char const*) ;

__attribute__((used)) static inline void enc_bool_val(char **enc, char *end, const char *name,
    bool val)
{
 AVal s;
 *enc = AMF_EncodeNamedBoolean(*enc, end, flv_str(&s, name), val);
}
