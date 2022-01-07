
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TAB_INFO ;
typedef int LRESULT ;


 int NM_CLICK ;
 int TAB_SendSimpleNotify (int const*,int ) ;

__attribute__((used)) static inline LRESULT
TAB_LButtonUp (const TAB_INFO *infoPtr)
{
  TAB_SendSimpleNotify(infoPtr, NM_CLICK);

  return 0;
}
