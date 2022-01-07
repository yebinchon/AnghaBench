
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_char_to_encoding (char*) ;

__attribute__((used)) static int
pg_get_utf8_id(void)
{
 static int utf8_id = -1;

 if (utf8_id < 0)
  utf8_id = pg_char_to_encoding("utf8");
 return utf8_id;
}
