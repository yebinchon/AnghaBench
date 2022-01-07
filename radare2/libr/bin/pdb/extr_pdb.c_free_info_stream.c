
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int names; } ;
typedef TYPE_1__ SPDBInfoStream ;


 int free (int ) ;

__attribute__((used)) static void free_info_stream(void *stream) {
 SPDBInfoStream *info_stream = (SPDBInfoStream *) stream;
 free (info_stream->names);
}
