
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;


 int EMBED ;
 char* RSTR_EMBED_PTR (struct RString*) ;
 int RSTR_SET_EMBED_LEN (struct RString*,size_t) ;
 int RSTR_SET_TYPE_FLAG (struct RString*,int ) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static struct RString*
str_init_embed(struct RString *s, const char *p, size_t len)
{
  if (p) memcpy(RSTR_EMBED_PTR(s), p, len);
  RSTR_EMBED_PTR(s)[len] = '\0';
  RSTR_SET_TYPE_FLAG(s, EMBED);
  RSTR_SET_EMBED_LEN(s, len);
  return s;
}
