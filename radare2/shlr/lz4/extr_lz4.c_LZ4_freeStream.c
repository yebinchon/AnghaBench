
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LZ4_stream_t ;


 int free (int *) ;

void LZ4_freeStream (LZ4_stream_t* LZ4_stream) {
 free (LZ4_stream);
}
