
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_output {int stopping_event; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ os_event_try (int ) ;

__attribute__((used)) static inline bool stopping(const struct obs_output *output)
{
 return os_event_try(output->stopping_event) == EAGAIN;
}
