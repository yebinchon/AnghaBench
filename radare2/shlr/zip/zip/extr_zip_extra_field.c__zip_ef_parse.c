
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zip_uint8_t ;
typedef int zip_uint16_t ;
typedef int zip_flags_t ;
struct zip_extra_field {struct zip_extra_field* next; } ;
struct zip_error {int dummy; } ;


 int ZIP_ER_INCONS ;
 int ZIP_ER_MEMORY ;
 int _zip_ef_free (struct zip_extra_field*) ;
 struct zip_extra_field* _zip_ef_new (int,int,int const*,int ) ;
 int _zip_error_set (struct zip_error*,int ,int ) ;
 int _zip_read2 (int const**) ;

struct zip_extra_field *
_zip_ef_parse(const zip_uint8_t *data, zip_uint16_t len, zip_flags_t flags, struct zip_error *error)
{
    struct zip_extra_field *ef, *ef2, *ef_head;
    const zip_uint8_t *p;
    zip_uint16_t fid, flen;

    ef_head = ((void*)0);
    for (p=data; p<data+len; p+=flen) {
 if (p+4 > data+len) {
     _zip_error_set(error, ZIP_ER_INCONS, 0);
     _zip_ef_free(ef_head);
     return ((void*)0);
 }

 fid = _zip_read2(&p);
 flen = _zip_read2(&p);

 if (p+flen > data+len) {
     _zip_error_set(error, ZIP_ER_INCONS, 0);
     _zip_ef_free(ef_head);
     return ((void*)0);
 }

 if ((ef2=_zip_ef_new(fid, flen, p, flags)) == ((void*)0)) {
     _zip_error_set(error, ZIP_ER_MEMORY, 0);
     _zip_ef_free(ef_head);
     return ((void*)0);
 }

 if (ef_head) {
     ef->next = ef2;
     ef = ef2;
 }
 else
     ef_head = ef = ef2;
    }

    return ef_head;
}
