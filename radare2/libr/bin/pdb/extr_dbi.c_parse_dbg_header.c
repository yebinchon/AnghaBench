
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sn_section_hdr_orig; int sn_new_fpo; int sn_pdata; int sn_xdata; int sn_token_rid_map; int sn_section_hdr; int sn_omap_from_src; int sn_omap_to_src; int sn_fixup; int sn_exception; int sn_fpo; } ;
typedef TYPE_1__ SDbiDbgHeader ;
typedef int R_STREAM_FILE ;


 int stream_file_read (int *,int,char*) ;

__attribute__((used)) static void parse_dbg_header(SDbiDbgHeader *dbg_header, R_STREAM_FILE *stream_file) {
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_fpo);
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_exception);
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_fixup);
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_omap_to_src);
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_omap_from_src);
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_section_hdr);
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_token_rid_map);
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_xdata);
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_pdata);
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_new_fpo);
 stream_file_read (stream_file, sizeof (short), (char *)&dbg_header->sn_section_hdr_orig);
}
