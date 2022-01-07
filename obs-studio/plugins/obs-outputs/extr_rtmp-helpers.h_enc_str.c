
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVal ;


 char* AMF_EncodeString (char*,char*,int ) ;
 int flv_str (int *,char const*) ;

__attribute__((used)) static inline void enc_str(char **enc, char *end, const char *str)
{
 AVal s;
 *enc = AMF_EncodeString(*enc, end, flv_str(&s, str));
}
