
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_stream_t ;


 int memset (int *,int ,int) ;

void LZ4_resetStream (LZ4_stream_t* LZ4_stream) {
 memset (LZ4_stream, 0, sizeof(LZ4_stream_t));
}
