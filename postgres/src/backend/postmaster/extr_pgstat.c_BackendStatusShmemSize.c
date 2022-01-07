
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int PgBackendStatus ;
typedef int PgBackendSSLStatus ;


 int NAMEDATALEN ;
 int NumBackendStatSlots ;
 int add_size (int ,int ) ;
 int mul_size (int,int ) ;
 int pgstat_track_activity_query_size ;

Size
BackendStatusShmemSize(void)
{
 Size size;


 size = mul_size(sizeof(PgBackendStatus), NumBackendStatSlots);

 size = add_size(size,
     mul_size(NAMEDATALEN, NumBackendStatSlots));

 size = add_size(size,
     mul_size(NAMEDATALEN, NumBackendStatSlots));

 size = add_size(size,
     mul_size(pgstat_track_activity_query_size, NumBackendStatSlots));





 return size;
}
