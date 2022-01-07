
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char zip_uint8_t ;
typedef scalar_t__ zip_uint64_t ;
typedef scalar_t__ zip_uint32_t ;
typedef scalar_t__ zip_uint16_t ;
struct zip_error {int dummy; } ;
struct zip_dirent {int bitflags; scalar_t__ comp_size; scalar_t__ uncomp_size; scalar_t__ offset; int local_extra_fields_read; int * extra_fields; void* disk_number; int * comment; int * filename; void* ext_attrib; scalar_t__ int_attrib; void* crc; int last_mod; scalar_t__ comp_method; scalar_t__ version_needed; scalar_t__ version_madeby; } ;
typedef int FILE ;


 int CDENTRYSIZE ;
 int CENTRAL_MAGIC ;
 int EFBIG ;
 scalar_t__ LENTRYSIZE ;
 int LOCAL_MAGIC ;
 int ZIP_EF_CENTRAL ;
 int ZIP_EF_LOCAL ;
 int ZIP_EF_UTF_8_COMMENT ;
 int ZIP_EF_UTF_8_NAME ;
 int ZIP_EF_ZIP64 ;
 scalar_t__ ZIP_ENCODING_ERROR ;
 int ZIP_ENCODING_UTF8_KNOWN ;
 int ZIP_ER_INCONS ;
 int ZIP_ER_NOZIP ;
 int ZIP_ER_READ ;
 int ZIP_ER_SEEK ;
 int ZIP_GPBF_ENCODING_UTF_8 ;
 scalar_t__ ZIP_OFF_MAX ;
 void* ZIP_UINT16_MAX ;
 scalar_t__ ZIP_UINT32_MAX ;
 int _zip_d2u_time (scalar_t__,scalar_t__) ;
 int _zip_dirent_init (struct zip_dirent*) ;
 void* _zip_dirent_process_ef_utf_8 (struct zip_dirent*,int ,int *) ;
 unsigned char* _zip_ef_get_by_id (int *,scalar_t__*,int ,int ,int ,struct zip_error*) ;
 int * _zip_ef_parse (unsigned char*,scalar_t__,int ,struct zip_error*) ;
 int * _zip_ef_remove_internal (int *) ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 scalar_t__ _zip_guess_encoding (int *,int ) ;
 scalar_t__ _zip_read2 (unsigned char const**) ;
 void* _zip_read4 (unsigned char const**) ;
 void* _zip_read8 (unsigned char const**) ;
 unsigned char* _zip_read_data (unsigned char const**,int *,scalar_t__,int ,struct zip_error*) ;
 void* _zip_read_string (unsigned char const**,int *,scalar_t__,int,struct zip_error*) ;
 int errno ;
 scalar_t__ fread (unsigned char*,int,scalar_t__,int *) ;
 int free (unsigned char*) ;
 scalar_t__ memcmp (unsigned char const*,int ,int) ;

int
_zip_dirent_read(struct zip_dirent *zde, FILE *fp,
   const unsigned char **bufp, zip_uint64_t *leftp, int local,
   struct zip_error *error)
{
    unsigned char buf[CDENTRYSIZE];
    const unsigned char *cur;
    zip_uint16_t dostime, dosdate;
    zip_uint32_t size;
    zip_uint16_t filename_len, comment_len, ef_len;

    if (local)
 size = LENTRYSIZE;
    else
 size = CDENTRYSIZE;

    if (leftp && (*leftp < size)) {
 _zip_error_set(error, ZIP_ER_NOZIP, 0);
 return -1;
    }

    if (bufp) {

 cur = *bufp;
    }
    else {

 if ((fread(buf, 1, size, fp)<size)) {
     _zip_error_set(error, ZIP_ER_READ, errno);
     return -1;
 }
 cur = buf;
    }

    if (memcmp(cur, (local ? LOCAL_MAGIC : CENTRAL_MAGIC), 4) != 0) {
 _zip_error_set(error, ZIP_ER_NOZIP, 0);
 return -1;
    }
    cur += 4;




    _zip_dirent_init(zde);
    if (!local)
 zde->version_madeby = _zip_read2(&cur);
    else
 zde->version_madeby = 0;
    zde->version_needed = _zip_read2(&cur);
    zde->bitflags = _zip_read2(&cur);
    zde->comp_method = _zip_read2(&cur);


    dostime = _zip_read2(&cur);
    dosdate = _zip_read2(&cur);
    zde->last_mod = _zip_d2u_time(dostime, dosdate);

    zde->crc = _zip_read4(&cur);
    zde->comp_size = _zip_read4(&cur);
    zde->uncomp_size = _zip_read4(&cur);

    filename_len = _zip_read2(&cur);
    ef_len = _zip_read2(&cur);

    if (local) {
 comment_len = 0;
 zde->disk_number = 0;
 zde->int_attrib = 0;
 zde->ext_attrib = 0;
 zde->offset = 0;
    } else {
 comment_len = _zip_read2(&cur);
 zde->disk_number = _zip_read2(&cur);
 zde->int_attrib = _zip_read2(&cur);
 zde->ext_attrib = _zip_read4(&cur);
 zde->offset = _zip_read4(&cur);
    }

    zde->filename = ((void*)0);
    zde->extra_fields = ((void*)0);
    zde->comment = ((void*)0);

    size += filename_len+ef_len+comment_len;

    if (leftp && (*leftp < size)) {
 _zip_error_set(error, ZIP_ER_INCONS, 0);
 return -1;
    }

    if (filename_len) {
 zde->filename = _zip_read_string(bufp ? &cur : ((void*)0), fp, filename_len, 1, error);
 if (!zde->filename)
     return -1;

 if (zde->bitflags & ZIP_GPBF_ENCODING_UTF_8) {
     if (_zip_guess_encoding(zde->filename, ZIP_ENCODING_UTF8_KNOWN) == ZIP_ENCODING_ERROR) {
  _zip_error_set(error, ZIP_ER_INCONS, 0);
  return -1;
     }
 }
    }

    if (ef_len) {
 zip_uint8_t *ef = _zip_read_data(bufp ? &cur : ((void*)0), fp, ef_len, 0, error);

 if (ef == ((void*)0))
     return -1;
 if ((zde->extra_fields=_zip_ef_parse(ef, ef_len, local ? ZIP_EF_LOCAL : ZIP_EF_CENTRAL, error)) == ((void*)0)) {
     free(ef);
     return -1;
 }
 free(ef);
 if (local)
     zde->local_extra_fields_read = 1;
    }

    if (comment_len) {
 zde->comment = _zip_read_string(bufp ? &cur : ((void*)0), fp, comment_len, 0, error);
 if (!zde->comment)
     return -1;

 if (zde->bitflags & ZIP_GPBF_ENCODING_UTF_8) {
     if (_zip_guess_encoding(zde->comment, ZIP_ENCODING_UTF8_KNOWN) == ZIP_ENCODING_ERROR) {
  _zip_error_set(error, ZIP_ER_INCONS, 0);
  return -1;
     }
 }
    }

    zde->filename = _zip_dirent_process_ef_utf_8(zde, ZIP_EF_UTF_8_NAME, zde->filename);
    zde->comment = _zip_dirent_process_ef_utf_8(zde, ZIP_EF_UTF_8_COMMENT, zde->comment);



    if (zde->uncomp_size == ZIP_UINT32_MAX || zde->comp_size == ZIP_UINT32_MAX || zde->offset == ZIP_UINT32_MAX) {
 zip_uint16_t got_len, needed_len;
 const zip_uint8_t *ef = _zip_ef_get_by_id(zde->extra_fields, &got_len, ZIP_EF_ZIP64, 0, local ? ZIP_EF_LOCAL : ZIP_EF_CENTRAL, error);

 if (ef == ((void*)0))
     return -1;


 if (local)
     needed_len = 16;
 else
     needed_len = ((zde->uncomp_size == ZIP_UINT32_MAX) + (zde->comp_size == ZIP_UINT32_MAX) + (zde->offset == ZIP_UINT32_MAX)) * 8
  + (zde->disk_number == ZIP_UINT16_MAX) * 4;

 if (got_len != needed_len) {
     _zip_error_set(error, ZIP_ER_INCONS, 0);
     return -1;
 }

 if (zde->uncomp_size == ZIP_UINT32_MAX)
     zde->uncomp_size = _zip_read8(&ef);
 else if (local)
     ef += 8;
 if (zde->comp_size == ZIP_UINT32_MAX)
     zde->comp_size = _zip_read8(&ef);
 if (!local) {
     if (zde->offset == ZIP_UINT32_MAX)
  zde->offset = _zip_read8(&ef);
     if (zde->disk_number == ZIP_UINT16_MAX)
  zde->disk_number = _zip_read4(&ef);
 }
    }

    if (!local) {
        if (zde->offset > ZIP_OFF_MAX) {
            _zip_error_set(error, ZIP_ER_SEEK, EFBIG);
            return -1;
        }
    }

    zde->extra_fields = _zip_ef_remove_internal(zde->extra_fields);

    if (bufp)
      *bufp = cur;
    if (leftp)
 *leftp -= size;

    return 0;
}
