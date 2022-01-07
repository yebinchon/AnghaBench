
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mChannelsPerFrame; scalar_t__ mFormatID; scalar_t__ mBitsPerChannel; scalar_t__ mSampleRate; } ;
typedef TYPE_1__ AudioStreamBasicDescription ;


 scalar_t__ MP_NUM_CHANNELS ;
 int value_is_better (scalar_t__,scalar_t__,scalar_t__) ;

bool ca_asbd_is_better(AudioStreamBasicDescription *req,
                       AudioStreamBasicDescription *old,
                       AudioStreamBasicDescription *new)
{
    if (new->mChannelsPerFrame > MP_NUM_CHANNELS)
        return 0;
    if (old->mChannelsPerFrame > MP_NUM_CHANNELS)
        return 1;
    if (req->mFormatID != new->mFormatID)
        return 0;
    if (req->mFormatID != old->mFormatID)
        return 1;

    if (!value_is_better(req->mBitsPerChannel, old->mBitsPerChannel,
                         new->mBitsPerChannel))
        return 0;

    if (!value_is_better(req->mSampleRate, old->mSampleRate, new->mSampleRate))
        return 0;

    if (!value_is_better(req->mChannelsPerFrame, old->mChannelsPerFrame,
                         new->mChannelsPerFrame))
        return 0;

    return 1;
}
