
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_demuxer {scalar_t__ abort; } ;



__attribute__((used)) static int demuxer_interrupted_callback(void *opaque)
{
 return opaque != ((void*)0) && ((struct ff_demuxer *)opaque)->abort;
}
