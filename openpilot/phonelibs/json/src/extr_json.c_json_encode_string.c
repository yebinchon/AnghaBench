
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SB ;


 int emit_string (int *,char const*) ;
 char* sb_finish (int *) ;
 int sb_init (int *) ;

char *json_encode_string(const char *str)
{
 SB sb;
 sb_init(&sb);

 emit_string(&sb, str);

 return sb_finish(&sb);
}
