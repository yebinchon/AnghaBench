
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int text ;
struct TYPE_3__ {int len; char const* data; } ;
typedef TYPE_1__* StringInfo ;


 int SET_VARSIZE (int *,scalar_t__) ;
 scalar_t__ VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 int memcpy (scalar_t__,char const*,int) ;
 scalar_t__ palloc (scalar_t__) ;
 int strlen (char const*) ;

__attribute__((used)) static text *
catenate_stringinfo_string(StringInfo buffer, const char *addon)
{

 int buflen = buffer->len;
 int addlen = strlen(addon);
 text *result = (text *) palloc(buflen + addlen + VARHDRSZ);

 SET_VARSIZE(result, buflen + addlen + VARHDRSZ);
 memcpy(VARDATA(result), buffer->data, buflen);
 memcpy(VARDATA(result) + buflen, addon, addlen);

 return result;
}
