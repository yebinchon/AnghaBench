
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct coreaudio_data {TYPE_3__* buf_list; int device_id; int unit; } ;
typedef int frames ;
typedef size_t UInt32 ;
struct TYPE_9__ {size_t mNumberBuffers; TYPE_1__* mBuffers; } ;
struct TYPE_8__ {int member_2; int member_1; int member_0; } ;
struct TYPE_7__ {size_t mDataByteSize; void* mData; } ;
typedef int OSStatus ;
typedef TYPE_2__ AudioObjectPropertyAddress ;


 int AudioObjectGetPropertyData (int ,TYPE_2__*,int ,int *,size_t*,TYPE_3__*) ;
 int AudioObjectGetPropertyDataSize (int ,TYPE_2__*,int ,int *,size_t*) ;
 int SCOPE_GLOBAL ;
 int bfree (TYPE_3__*) ;
 void* bmalloc (size_t) ;
 int ca_success (int ,struct coreaudio_data*,char*,char*) ;
 int get_property (int ,int ,int ,int ,size_t*,size_t*) ;
 int kAudioDevicePropertyBufferFrameSize ;
 int kAudioDevicePropertyScopeInput ;
 int kAudioDevicePropertyStreamConfiguration ;
 int kAudioObjectPropertyElementMaster ;

__attribute__((used)) static bool coreaudio_init_buffer(struct coreaudio_data *ca)
{
 UInt32 buf_size = 0;
 UInt32 size = 0;
 UInt32 frames = 0;
 OSStatus stat;

 AudioObjectPropertyAddress addr = {
  kAudioDevicePropertyStreamConfiguration,
  kAudioDevicePropertyScopeInput,
  kAudioObjectPropertyElementMaster};

 stat = AudioObjectGetPropertyDataSize(ca->device_id, &addr, 0, ((void*)0),
           &buf_size);
 if (!ca_success(stat, ca, "coreaudio_init_buffer", "get list size"))
  return 0;

 size = sizeof(frames);
 stat = get_property(ca->unit, kAudioDevicePropertyBufferFrameSize,
       SCOPE_GLOBAL, 0, &frames, &size);
 if (!ca_success(stat, ca, "coreaudio_init_buffer", "get frame size"))
  return 0;



 ca->buf_list = bmalloc(buf_size);

 stat = AudioObjectGetPropertyData(ca->device_id, &addr, 0, ((void*)0),
       &buf_size, ca->buf_list);
 if (!ca_success(stat, ca, "coreaudio_init_buffer", "allocate")) {
  bfree(ca->buf_list);
  ca->buf_list = ((void*)0);
  return 0;
 }

 for (UInt32 i = 0; i < ca->buf_list->mNumberBuffers; i++) {
  size = ca->buf_list->mBuffers[i].mDataByteSize;
  ca->buf_list->mBuffers[i].mData = bmalloc(size);
 }

 return 1;
}
