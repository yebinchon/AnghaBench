
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSED_PARAMETER (void*) ;

__attribute__((used)) static const char *bast_getname(void *unused)
{
 UNUSED_PARAMETER(unused);
 return "Audio Buffering Sync Test (Async Video/Audio Source)";
}
