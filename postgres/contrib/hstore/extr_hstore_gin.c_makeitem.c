
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int SET_VARSIZE (int *,scalar_t__) ;
 char* VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 int memcpy (char*,char*,int) ;
 scalar_t__ palloc (scalar_t__) ;

__attribute__((used)) static text *
makeitem(char *str, int len, char flag)
{
 text *item;

 item = (text *) palloc(VARHDRSZ + len + 1);
 SET_VARSIZE(item, VARHDRSZ + len + 1);

 *VARDATA(item) = flag;

 if (str && len > 0)
  memcpy(VARDATA(item) + 1, str, len);

 return item;
}
