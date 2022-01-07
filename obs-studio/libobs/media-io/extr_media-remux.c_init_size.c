
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_size; int member_0; } ;
struct _stat64 {int member_0; } ;
typedef TYPE_1__* media_remux_job_t ;
struct TYPE_3__ {int in_size; } ;


 int _stat64 (char const*,struct _stat64*) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static inline void init_size(media_remux_job_t job, const char *in_filename)
{




 struct stat st = {0};
 stat(in_filename, &st);

 job->in_size = st.st_size;
}
