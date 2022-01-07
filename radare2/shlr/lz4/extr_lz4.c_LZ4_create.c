
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef void LZ4_stream_t ;


 int LZ4_init (void*,int *) ;
 scalar_t__ calloc (int,int) ;

void* LZ4_create (char* inputBuffer) {
 LZ4_stream_t* lz4ds = (LZ4_stream_t*)calloc(8, sizeof(LZ4_stream_t));
 LZ4_init (lz4ds, (ut8*)inputBuffer);
 return lz4ds;
}
