
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int int32 ;


 int Min (int,int) ;

int32
pglz_maximum_compressed_size(int32 rawsize, int32 total_compressed_size)
{
 int32 compressed_size;
 compressed_size = (int32) ((int64) rawsize * 9 + 7) / 8;




 compressed_size = Min(compressed_size, total_compressed_size);

 return compressed_size;
}
