
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;


 TYPE_1__* PHPDBG_G (int ) ;
 size_t PHPDBG_STDOUT ;
 int fflush (int ) ;
 int io ;
 int phpdbg_active_sigsafe_mem () ;

__attribute__((used)) static inline void php_sapi_phpdbg_flush(void *context)
{
 if (!phpdbg_active_sigsafe_mem()) {
  fflush(PHPDBG_G(io)[PHPDBG_STDOUT].ptr);
 }
}
