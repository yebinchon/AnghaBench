
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int text ;
typedef int MBuf ;


 scalar_t__ VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int * mbuf_create_from_data (int *,int ) ;

__attribute__((used)) static MBuf *
create_mbuf_from_vardata(text *data)
{
 return mbuf_create_from_data((uint8 *) VARDATA_ANY(data),
         VARSIZE_ANY_EXHDR(data));
}
