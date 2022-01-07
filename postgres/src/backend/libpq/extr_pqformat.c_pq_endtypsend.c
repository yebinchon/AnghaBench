
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bytea ;
struct TYPE_3__ {int len; scalar_t__ data; } ;
typedef TYPE_1__* StringInfo ;


 int Assert (int) ;
 int SET_VARSIZE (int *,int ) ;
 int VARHDRSZ ;

bytea *
pq_endtypsend(StringInfo buf)
{
 bytea *result = (bytea *) buf->data;


 Assert(buf->len >= VARHDRSZ);
 SET_VARSIZE(result, buf->len);

 return result;
}
