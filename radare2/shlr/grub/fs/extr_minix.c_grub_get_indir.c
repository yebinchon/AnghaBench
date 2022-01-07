
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_minix_sblock {int dummy; } ;
struct grub_minix_data {int version; int disk; struct grub_minix_sblock sblock; } ;
typedef int grub_uint32_t ;
typedef int grub_uint16_t ;


 int GRUB_MINIX_LOG2_ZONESZ ;
 int grub_disk_read (int ,int,int,int,char*) ;
 int grub_le_to_cpu16 (int ) ;
 int grub_le_to_cpu32 (int ) ;

__attribute__((used)) static int
grub_get_indir (int zone, int num, struct grub_minix_data *data)
{
  struct grub_minix_sblock *sblock = &data->sblock;
  if (data->version == 1)
    {
      grub_uint16_t indir16;
      grub_disk_read (data->disk,
        zone << GRUB_MINIX_LOG2_ZONESZ,
        sizeof (grub_uint16_t) * num,
        sizeof (grub_uint16_t), (char *) &indir16);
      return grub_le_to_cpu16 (indir16);
    }
  else
    {
      grub_uint32_t indir32;
      grub_disk_read (data->disk,
        zone << GRUB_MINIX_LOG2_ZONESZ,
        sizeof (grub_uint32_t) * num,
        sizeof (grub_uint32_t), (char *) &indir32);
      return grub_le_to_cpu32 (indir32);
    }
}
