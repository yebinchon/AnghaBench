
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_ERROR ;
 scalar_t__ OG (int ) ;
 int active ;
 int php_error_docref (char*,int ,char*) ;
 int php_output_deactivate () ;
 int running ;

__attribute__((used)) static inline int php_output_lock_error(int op)
{

 if (op && OG(active) && OG(running)) {

  php_output_deactivate();
  php_error_docref("ref.outcontrol", E_ERROR, "Cannot use output buffering in output buffering display handlers");
  return 1;
 }
 return 0;
}
