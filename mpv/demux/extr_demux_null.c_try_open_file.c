
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demuxer {int seekable; int filename; } ;
typedef enum demux_check { ____Placeholder_demux_check } demux_check ;


 int DEMUX_CHECK_REQUEST ;
 int bstr0 (int ) ;
 int bstr_startswith0 (int ,char*) ;

__attribute__((used)) static int try_open_file(struct demuxer *demux, enum demux_check check)
{
    if (!bstr_startswith0(bstr0(demux->filename), "null://") &&
        check != DEMUX_CHECK_REQUEST)
        return -1;
    demux->seekable = 1;
    return 0;
}
