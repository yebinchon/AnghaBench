
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef scalar_t__ int32 ;


 int SET_VARSIZE (int *,scalar_t__) ;
 scalar_t__ VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (int *) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ palloc (scalar_t__) ;

text *
concat_text(text *arg1, text *arg2)
{
 int32 arg1_size = VARSIZE(arg1) - VARHDRSZ;
 int32 arg2_size = VARSIZE(arg2) - VARHDRSZ;
 int32 new_text_size = arg1_size + arg2_size + VARHDRSZ;
 text *new_text = (text *) palloc(new_text_size);

 SET_VARSIZE(new_text, new_text_size);
 memcpy(VARDATA(new_text), VARDATA(arg1), arg1_size);
 memcpy(VARDATA(new_text) + arg1_size, VARDATA(arg2), arg2_size);
 return new_text;
}
