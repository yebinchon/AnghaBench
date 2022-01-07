
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int TextPositionState ;
typedef int Oid ;


 int VARSIZE_ANY_EXHDR (int *) ;
 int text_position_cleanup (int *) ;
 int text_position_get_match_pos (int *) ;
 int text_position_next (int *) ;
 int text_position_setup (int *,int *,int ,int *) ;

__attribute__((used)) static int
text_position(text *t1, text *t2, Oid collid)
{
 TextPositionState state;
 int result;


 if (VARSIZE_ANY_EXHDR(t2) < 1)
  return 1;


 if (VARSIZE_ANY_EXHDR(t1) < VARSIZE_ANY_EXHDR(t2))
  return 0;

 text_position_setup(t1, t2, collid, &state);
 if (!text_position_next(&state))
  result = 0;
 else
  result = text_position_get_match_pos(&state);
 text_position_cleanup(&state);
 return result;
}
