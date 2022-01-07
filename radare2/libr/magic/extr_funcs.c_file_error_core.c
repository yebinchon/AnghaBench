
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int va_list ;
typedef scalar_t__ ut32 ;
struct TYPE_6__ {int * buf; } ;
struct TYPE_7__ {int error; scalar_t__ haderr; TYPE_1__ o; } ;
typedef TYPE_2__ RMagic ;


 int file_printf (TYPE_2__*,char*,scalar_t__) ;
 int file_vprintf (TYPE_2__*,char const*,int ) ;
 int free (int *) ;
 scalar_t__ strerror (int) ;

__attribute__((used)) static void file_error_core(RMagic *ms, int error, const char *f, va_list va, ut32 lineno) {

 if (!ms || ms->haderr) {
  return;
 }
 if (lineno != 0) {
  free(ms->o.buf);
  ms->o.buf = ((void*)0);
  (void)file_printf (ms, "line %u: ", lineno);
 }

        file_vprintf (ms, f, va);
 if (error > 0) {
  (void)file_printf (ms, " (%s)", strerror (error));
 }
 ms->haderr++;
 ms->error = error;
}
