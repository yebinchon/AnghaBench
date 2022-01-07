
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int buf ;
typedef int FILE ;


 int FLV_INFO_SIZE_OFFSET ;
 int SEEK_SET ;
 int enc_num_val (char**,char*,char*,double) ;
 int fseek (int *,int ,int ) ;
 int fwrite (char*,int,int,int *) ;

void write_file_info(FILE *file, int64_t duration_ms, int64_t size)
{
 char buf[64];
 char *enc = buf;
 char *end = enc + sizeof(buf);

 fseek(file, FLV_INFO_SIZE_OFFSET, SEEK_SET);

 enc_num_val(&enc, end, "duration", (double)duration_ms / 1000.0);
 enc_num_val(&enc, end, "fileSize", (double)size);

 fwrite(buf, 1, enc - buf, file);
}
