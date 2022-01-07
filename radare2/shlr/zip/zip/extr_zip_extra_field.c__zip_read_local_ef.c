
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zip_uint8_t ;
typedef scalar_t__ zip_uint64_t ;
typedef scalar_t__ zip_uint16_t ;
struct zip_extra_field {int dummy; } ;
struct zip_entry {TYPE_2__* changes; TYPE_1__* orig; } ;
struct zip {scalar_t__ nentry; int error; int zp; struct zip_entry* entry; } ;
typedef int off_t ;
typedef int b ;
struct TYPE_4__ {int local_extra_fields_read; int extra_fields; } ;
struct TYPE_3__ {int local_extra_fields_read; int extra_fields; scalar_t__ offset; } ;


 int SEEK_CUR ;
 int SEEK_SET ;
 int ZIP_EF_LOCAL ;
 int ZIP_ER_INVAL ;
 int ZIP_ER_READ ;
 int ZIP_ER_SEEK ;
 int _zip_ef_merge (int ,struct zip_extra_field*) ;
 struct zip_extra_field* _zip_ef_parse (int *,scalar_t__,int ,int *) ;
 struct zip_extra_field* _zip_ef_remove_internal (struct zip_extra_field*) ;
 int _zip_error_set (int *,int ,int ) ;
 scalar_t__ _zip_read2 (unsigned char const**) ;
 int * _zip_read_data (int *,int ,scalar_t__,int ,int *) ;
 int errno ;
 int fread (unsigned char*,int,int,int ) ;
 int free (int *) ;
 scalar_t__ fseek (int ,scalar_t__,int ) ;
 scalar_t__ fseeko (int ,int ,int ) ;

int
_zip_read_local_ef(struct zip *za, zip_uint64_t idx)
{
    struct zip_entry *e;
    unsigned char b[4];
    const unsigned char *p;
    zip_uint16_t fname_len, ef_len;

    if (idx >= za->nentry) {
 _zip_error_set(&za->error, ZIP_ER_INVAL, 0);
 return -1;
    }

    e = za->entry+idx;

    if (e->orig == ((void*)0) || e->orig->local_extra_fields_read)
 return 0;


    if (fseeko(za->zp, (off_t)(e->orig->offset + 26), SEEK_SET) < 0) {
 _zip_error_set(&za->error, ZIP_ER_SEEK, errno);
 return -1;
    }

    if (fread(b, sizeof(b), 1, za->zp) != 1) {
 _zip_error_set(&za->error, ZIP_ER_READ, errno);
 return -1;
    }

    p = b;
    fname_len = _zip_read2(&p);
    ef_len = _zip_read2(&p);

    if (ef_len > 0) {
 struct zip_extra_field *ef;
 zip_uint8_t *ef_raw;

 if (fseek(za->zp, fname_len, SEEK_CUR) < 0) {
     _zip_error_set(&za->error, ZIP_ER_SEEK, errno);
     return -1;
 }

 ef_raw = _zip_read_data(((void*)0), za->zp, ef_len, 0, &za->error);

 if (ef_raw == ((void*)0))
     return -1;

 if ((ef=_zip_ef_parse(ef_raw, ef_len, ZIP_EF_LOCAL, &za->error)) == ((void*)0)) {
     free(ef_raw);
     return -1;
 }
 free(ef_raw);

        ef = _zip_ef_remove_internal(ef);
 e->orig->extra_fields = _zip_ef_merge(e->orig->extra_fields, ef);
    }

    e->orig->local_extra_fields_read = 1;

    if (e->changes && e->changes->local_extra_fields_read == 0) {
 e->changes->extra_fields = e->orig->extra_fields;
 e->changes->local_extra_fields_read = 1;
    }

    return 0;
}
