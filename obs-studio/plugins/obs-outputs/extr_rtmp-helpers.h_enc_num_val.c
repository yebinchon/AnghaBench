
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVal ;


 char* AMF_EncodeNamedNumber (char*,char*,int ,double) ;
 int flv_str (int *,char const*) ;

__attribute__((used)) static inline void enc_num_val(char **enc, char *end, const char *name,
          double val)
{
 AVal s;
 *enc = AMF_EncodeNamedNumber(*enc, end, flv_str(&s, name), val);
}
