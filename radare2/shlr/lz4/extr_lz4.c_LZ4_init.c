
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int * bufferStart; } ;
struct TYPE_6__ {TYPE_1__ internal_donotuse; } ;
typedef TYPE_2__ LZ4_stream_t ;


 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void LZ4_init(LZ4_stream_t* lz4ds, ut8* base) {
 memset (lz4ds, 0, sizeof(LZ4_stream_t));
 lz4ds->internal_donotuse.bufferStart = base;
}
