
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data4; int data3; int data2; int data1; } ;
struct TYPE_4__ {char* names; int cb_names; TYPE_1__ guid; int age; int time_date_stamp; int version; } ;
typedef TYPE_2__ SPDBInfoStream ;
typedef int R_STREAM_FILE ;


 scalar_t__ calloc (int,int) ;
 int stream_file_read (int *,int,char*) ;

__attribute__((used)) static void parse_pdb_info_stream(void *parsed_pdb_stream, R_STREAM_FILE *stream) {
 SPDBInfoStream *tmp = (SPDBInfoStream *) parsed_pdb_stream;

 tmp->names = 0;

 stream_file_read (stream, 4, (char *) &tmp-> version);
 stream_file_read (stream, 4, (char *) &tmp-> time_date_stamp);
 stream_file_read (stream, 4, (char *) &tmp-> age);
 stream_file_read (stream, 4, (char *) &tmp-> guid.data1);
 stream_file_read (stream, 2, (char *) &tmp-> guid.data2);
 stream_file_read (stream, 2, (char *) &tmp-> guid.data3);
 stream_file_read (stream, 8, (char *) &tmp-> guid.data4);
 stream_file_read (stream, 4, (char *) &tmp-> cb_names);

 tmp-> names = (char *) calloc (1, tmp-> cb_names);
 stream_file_read (stream, tmp-> cb_names, tmp-> names);
}
