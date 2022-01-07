
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; int dynamic_members; scalar_t__ mem; } ;
typedef TYPE_1__ zend_persistent_script ;


 unsigned int ADLER32_INIT ;
 unsigned int zend_adler32 (unsigned int,unsigned char*,size_t) ;

unsigned int zend_accel_script_checksum(zend_persistent_script *persistent_script)
{
 unsigned char *mem = (unsigned char*)persistent_script->mem;
 size_t size = persistent_script->size;
 size_t persistent_script_check_block_size = ((char *)&(persistent_script->dynamic_members)) - (char *)persistent_script;
 unsigned int checksum = ADLER32_INIT;

 if (mem < (unsigned char*)persistent_script) {
  checksum = zend_adler32(checksum, mem, (unsigned char*)persistent_script - mem);
  size -= (unsigned char*)persistent_script - mem;
  mem += (unsigned char*)persistent_script - mem;
 }

 zend_adler32(checksum, mem, persistent_script_check_block_size);
 mem += sizeof(*persistent_script);
 size -= sizeof(*persistent_script);

 if (size > 0) {
  checksum = zend_adler32(checksum, mem, size);
 }
 return checksum;
}
