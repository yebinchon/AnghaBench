
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeline {int num_sources; int sources; } ;
struct demuxer {int dummy; } ;


 int MP_TARRAY_APPEND (struct timeline*,int ,int ,struct demuxer*) ;

__attribute__((used)) static void add_source(struct timeline *tl, struct demuxer *d)
{
    MP_TARRAY_APPEND(tl, tl->sources, tl->num_sources, d);
}
