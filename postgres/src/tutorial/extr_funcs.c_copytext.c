
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int SET_VARSIZE (int *,scalar_t__) ;
 scalar_t__ VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (int *) ;
 int memcpy (void*,void*,scalar_t__) ;
 scalar_t__ palloc (scalar_t__) ;

text *
copytext(text *t)
{



 text *new_t = (text *) palloc(VARSIZE(t));

 SET_VARSIZE(new_t, VARSIZE(t));




 memcpy((void *) VARDATA(new_t),
     (void *) VARDATA(t),
     VARSIZE(t) - VARHDRSZ);
 return new_t;
}
