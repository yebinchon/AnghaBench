
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_dirent {scalar_t__ version_needed; int bitflags; scalar_t__ comp_method; scalar_t__ last_mod; scalar_t__ crc; scalar_t__ comp_size; scalar_t__ uncomp_size; int filename; } ;


 int ZIP_GPBF_DATA_DESCRIPTOR ;
 int _zip_string_equal (int ,int ) ;

__attribute__((used)) static int
_zip_headercomp(const struct zip_dirent *central, const struct zip_dirent *local)
{
    if ((central->version_needed != local->version_needed)





 || (central->comp_method != local->comp_method)
 || (central->last_mod != local->last_mod)
 || !_zip_string_equal(central->filename, local->filename)) {
 return -1;
    }


    if ((central->crc != local->crc) || (central->comp_size != local->comp_size)
 || (central->uncomp_size != local->uncomp_size)) {


 if (((local->bitflags & ZIP_GPBF_DATA_DESCRIPTOR) == 0
      || local->crc != 0 || local->comp_size != 0 || local->uncomp_size != 0))
     return -1;
    }

    return 0;
}
