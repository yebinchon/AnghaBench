
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VIDEODISPLAYMODE ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ MmAllocateMemory (int ) ;
 int PpcVideoGetBufferSize () ;
 int VideoTextMode ;
 scalar_t__ video_mem ;

VIDEODISPLAYMODE PpcVideoSetDisplayMode( char *DisplayMode, BOOLEAN Init ) {

    if( Init && !video_mem ) {
    video_mem = MmAllocateMemory( PpcVideoGetBufferSize() );
    }
    return VideoTextMode;
}
