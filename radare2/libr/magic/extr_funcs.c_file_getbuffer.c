
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int ut8 ;
typedef int mbstate_t ;
struct TYPE_5__ {char const* buf; char* pbuf; } ;
struct TYPE_6__ {int flags; TYPE_1__ o; scalar_t__ haderr; } ;
typedef TYPE_2__ RMagic ;


 int OCTALIFY (char*,char*) ;
 int R_MAGIC_RAW ;
 int SIZE_MAX ;
 int eprintf (char*) ;
 int file_oomem (TYPE_2__*,size_t) ;
 scalar_t__ isprint (int ) ;
 scalar_t__ iswprint (int ) ;
 size_t mbrtowc (int *,char*,size_t,int *) ;
 int memcpy (char*,char*,size_t) ;
 int memset (int *,int ,int) ;
 char* realloc (char*,size_t) ;
 size_t strlen (char const*) ;

const char *file_getbuffer(RMagic *ms) {
 char *pbuf, *op, *np;
 size_t psize, len;

 if (ms->haderr) {
  return ((void*)0);
 }

 if (ms->flags & R_MAGIC_RAW) {
  return ms->o.buf;
 }

 if (!ms->o.buf) {
  eprintf ("ms->o.buf = NULL\n");
  return ((void*)0);
 }


 len = strlen (ms->o.buf);
 if (len > (SIZE_MAX - 1) / 4) {
  file_oomem (ms, len);
  return ((void*)0);
 }
 psize = len * 4 + 1;
 if (!(pbuf = realloc (ms->o.pbuf, psize))) {
  file_oomem (ms, psize);
  return ((void*)0);
 }
 ms->o.pbuf = pbuf;



 {
  mbstate_t state;
  wchar_t nextchar;
  int mb_conv = 1;
  size_t bytesconsumed;
  char *eop;
  (void)memset(&state, 0, sizeof(mbstate_t));

  np = ms->o.pbuf;
  op = ms->o.buf;
  eop = op + len;

  while (op < eop) {
   bytesconsumed = mbrtowc(&nextchar, op,
       (size_t)(eop - op), &state);
   if (bytesconsumed == (size_t)(-1) ||
       bytesconsumed == (size_t)(-2)) {
    mb_conv = 0;
    break;
   }

   if (iswprint(nextchar)) {
    (void)memcpy(np, op, bytesconsumed);
    op += bytesconsumed;
    np += bytesconsumed;
   } else {
    while (bytesconsumed-- > 0) {
     OCTALIFY (np, op);
    }
   }
  }
  *np = '\0';


  if (mb_conv != 0) {
   return ms->o.pbuf;
  }
 }

 for (np = ms->o.pbuf, op = ms->o.buf; *op; op++) {
  if (isprint ((ut8)*op)) {
   *np++ = *op;
  } else {
   OCTALIFY (np, op);
  }
 }
 *np = '\0';
 return ms->o.pbuf;
}
