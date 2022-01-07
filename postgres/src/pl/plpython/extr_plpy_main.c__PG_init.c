
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PY_MAJOR_VERSION ;
 int TEXTDOMAIN ;
 scalar_t__ find_rendezvous_variable (char*) ;
 int pg_bindtextdomain (int ) ;
 int plpython_version_bitmask ;
 int* plpython_version_bitmask_ptr ;

void
_PG_init(void)
{
 int **bitmask_ptr;
 bitmask_ptr = (int **) find_rendezvous_variable("plpython_version_bitmask");
 if (!(*bitmask_ptr))
  *bitmask_ptr = &plpython_version_bitmask;

 plpython_version_bitmask_ptr = *bitmask_ptr;

 *plpython_version_bitmask_ptr |= (1 << PY_MAJOR_VERSION);






 pg_bindtextdomain(TEXTDOMAIN);
}
