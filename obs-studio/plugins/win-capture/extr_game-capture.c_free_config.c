
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct game_capture_config {int executable; int class; int title; } ;


 int bfree (int ) ;
 int memset (struct game_capture_config*,int ,int) ;

__attribute__((used)) static inline void free_config(struct game_capture_config *config)
{
 bfree(config->title);
 bfree(config->class);
 bfree(config->executable);
 memset(config, 0, sizeof(*config));
}
