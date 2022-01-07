
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
struct TYPE_2__ {char* inputfile; scalar_t__ lineno; } ;


 TYPE_1__ pset ;

__attribute__((used)) static void
log_locus_callback(const char **filename, uint64 *lineno)
{
 if (pset.inputfile)
 {
  *filename = pset.inputfile;
  *lineno = pset.lineno;
 }
 else
 {
  *filename = ((void*)0);
  *lineno = 0;
 }
}
