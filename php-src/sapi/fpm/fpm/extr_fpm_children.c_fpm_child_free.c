
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_child_s {struct fpm_child_s* log_stream; } ;


 int free (struct fpm_child_s*) ;
 int zlog_stream_close (struct fpm_child_s*) ;

__attribute__((used)) static void fpm_child_free(struct fpm_child_s *child)
{
 if (child->log_stream) {
  zlog_stream_close(child->log_stream);
  free(child->log_stream);
 }
 free(child);
}
