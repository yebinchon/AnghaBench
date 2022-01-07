
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calldata_t ;


 int UNUSED_PARAMETER (int *) ;
 int replay_buffer_hotkey (void*,int ,int *,int) ;

__attribute__((used)) static void save_replay_proc(void *data, calldata_t *cd)
{
 replay_buffer_hotkey(data, 0, ((void*)0), 1);
 UNUSED_PARAMETER(cd);
}
