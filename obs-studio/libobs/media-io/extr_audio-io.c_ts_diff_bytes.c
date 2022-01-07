
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_4__ {scalar_t__ block_size; } ;
typedef TYPE_1__ audio_t ;


 int ts_diff_frames (TYPE_1__ const*,int ,int ) ;

__attribute__((used)) static int64_t ts_diff_bytes(const audio_t *audio, uint64_t ts1, uint64_t ts2)
{
 return ts_diff_frames(audio, ts1, ts2) * (int64_t)audio->block_size;
}
