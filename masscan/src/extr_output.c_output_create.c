
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* time_t ;
struct TYPE_14__ {scalar_t__ period; int offset; scalar_t__ last; void* next; void* directory; int filesize; } ;
struct TYPE_10__ {void* stylesheet; } ;
struct TYPE_8__ {int ip; int port; } ;
struct Output {int is_virgin_file; int format; TYPE_7__ rotate; int * fp; int * funcs; int * src; void* filename; TYPE_3__ xml; int is_append; int is_show_host; int is_show_closed; int is_show_open; int is_interactive; int is_gmt; int is_banner; TYPE_1__ redis; void* when_scan_started; struct Masscan const* masscan; } ;
struct TYPE_12__ {scalar_t__ timeout; int offset; scalar_t__* directory; int filesize; } ;
struct TYPE_13__ {int format; TYPE_5__ rotate; scalar_t__* filename; scalar_t__* stylesheet; int is_append; int is_show_host; int is_show_closed; int is_show_open; int is_interactive; } ;
struct TYPE_9__ {int ip; int port; } ;
struct Masscan {int nic_count; TYPE_6__ output; TYPE_4__* nic; int is_gmt; int is_banners; TYPE_2__ redis; } ;
struct TYPE_11__ {int src; } ;
typedef int FILE ;


 struct Output* CALLOC (int,int) ;
 scalar_t__ LONG_MAX ;
 int binary_output ;
 int certs_output ;
 void* duplicate_string (scalar_t__*) ;
 int exit (int) ;
 int grepable_output ;
 void* indexed_filename (scalar_t__*,unsigned int) ;
 int json_output ;
 int ndjson_output ;
 void* next_rotate_time (scalar_t__,scalar_t__,int) ;
 int null_output ;
 int * open_rotate (struct Output*,scalar_t__*) ;
 int perror (scalar_t__*) ;
 int redis_output ;
 int text_output ;
 void* time (int ) ;
 int unicornscan_output ;
 int xml_output ;

struct Output *
output_create(const struct Masscan *masscan, unsigned thread_index)
{
    struct Output *out;
    unsigned i;


    out = CALLOC(1, sizeof(*out));
    out->masscan = masscan;
    out->when_scan_started = time(0);
    out->is_virgin_file = 1;




    out->rotate.period = masscan->output.rotate.timeout;
    out->rotate.offset = masscan->output.rotate.offset;
    out->rotate.filesize = masscan->output.rotate.filesize;
    out->redis.port = masscan->redis.port;
    out->redis.ip = masscan->redis.ip;
    out->is_banner = masscan->is_banners;
    out->is_gmt = masscan->is_gmt;
    out->is_interactive = masscan->output.is_interactive;
    out->is_show_open = masscan->output.is_show_open;
    out->is_show_closed = masscan->output.is_show_closed;
    out->is_show_host = masscan->output.is_show_host;
    out->is_append = masscan->output.is_append;
    out->xml.stylesheet = duplicate_string(masscan->output.stylesheet);
    out->rotate.directory = duplicate_string(masscan->output.rotate.directory);
    if (masscan->nic_count <= 1)
        out->filename = duplicate_string(masscan->output.filename);
    else
        out->filename = indexed_filename(masscan->output.filename, thread_index);

    for (i=0; i<8; i++) {
        out->src[i] = masscan->nic[i].src;
    }





    out->format = masscan->output.format;
    switch (out->format) {
    case 133:
        out->funcs = &text_output;
        break;
    case 129:
        out->funcs = &unicornscan_output;
        break;
    case 128:
        out->funcs = &xml_output;
        break;
    case 134:
        out->funcs = &json_output;
        break;
    case 132:
        out->funcs = &ndjson_output;
        break;
    case 136:
        out->funcs = &certs_output;
        break;
    case 137:
        out->funcs = &binary_output;
        break;
    case 135:
        out->funcs = &grepable_output;
        break;
    case 130:
        out->funcs = &redis_output;
        break;
    case 131:
        out->funcs = &null_output;
        break;
    default:
        out->funcs = &null_output;
        break;
    }






    if (masscan->output.filename[0] && out->funcs != &null_output) {
        FILE *fp;

        fp = open_rotate(out, masscan->output.filename);
        if (fp == ((void*)0)) {
            perror(masscan->output.filename);
            exit(1);
        }

        out->fp = fp;
        out->rotate.last = time(0);
    }






    if (masscan->output.rotate.timeout == 0) {

        out->rotate.next = (time_t)LONG_MAX;
    } else {
        if (out->rotate.offset > 1) {
            out->rotate.next = next_rotate_time(
                                    out->rotate.last-out->rotate.period,
                                    out->rotate.period, out->rotate.offset);
        } else {
            out->rotate.next = next_rotate_time(
                                    out->rotate.last,
                                    out->rotate.period, out->rotate.offset);
        }
    }



    return out;
}
