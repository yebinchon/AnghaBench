
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut32 ;
typedef int ut16 ;
typedef int st16 ;
struct TYPE_3__ {int resvd; int machine; int flags; int ecinfo_size; int dbghdr_size; int mfc_index; int tsmap_size; int filinf_size; int secmap_size; int seccon_size; int module_size; int pdbver2; int symrecStream; int pdbver; int pssymStream; int vers; int gssymStream; int age; int version; int magic; } ;
typedef TYPE_1__ SDBIHeader ;
typedef int R_STREAM_FILE ;


 int stream_file_read (int *,int,char*) ;

__attribute__((used)) static void parse_dbi_header(SDBIHeader *dbi_header, R_STREAM_FILE *stream_file) {
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->magic);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->version);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->age);
 stream_file_read (stream_file, sizeof (ut16), (char *)&dbi_header->gssymStream);
 stream_file_read (stream_file, sizeof (ut16), (char *)&dbi_header->vers);
 stream_file_read (stream_file, sizeof (st16), (char *)&dbi_header->pssymStream);
 stream_file_read (stream_file, sizeof (ut16), (char *)&dbi_header->pdbver);
 stream_file_read (stream_file, sizeof (st16), (char *)&dbi_header->symrecStream);
 stream_file_read (stream_file, sizeof (ut16), (char *)&dbi_header->pdbver2);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->module_size);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->seccon_size);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->secmap_size);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->filinf_size);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->tsmap_size);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->mfc_index);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->dbghdr_size);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->ecinfo_size);
 stream_file_read (stream_file, sizeof (ut16), (char *)&dbi_header->flags);
 stream_file_read (stream_file, 2, (char *)&dbi_header->machine);
 stream_file_read (stream_file, sizeof (ut32), (char *)&dbi_header->resvd);
}
