
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stinger_info {int media_source; } ;


 int bfree (struct stinger_info*) ;
 int obs_source_release (int ) ;

__attribute__((used)) static void stinger_destroy(void *data)
{
 struct stinger_info *s = data;
 obs_source_release(s->media_source);
 bfree(s);
}
