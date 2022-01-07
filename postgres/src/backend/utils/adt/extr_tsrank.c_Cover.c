
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int pos; scalar_t__ p; scalar_t__ q; TYPE_2__* begin; TYPE_2__* end; } ;
struct TYPE_11__ {int pos; } ;
struct TYPE_10__ {int query; } ;
typedef TYPE_1__ QueryRepresentation ;
typedef TYPE_2__ DocRepresentation ;
typedef TYPE_3__ CoverExt ;


 int GETQUERY (int ) ;
 scalar_t__ INT_MAX ;
 int TS_EXEC_CALC_NOT ;
 int TS_EXEC_EMPTY ;
 scalar_t__ TS_execute (int ,void*,int ,int ) ;
 scalar_t__ WEP_GETPOS (int ) ;
 int check_stack_depth () ;
 int checkcondition_QueryOperand ;
 int fillQueryRepresentationData (TYPE_1__*,TYPE_2__*) ;
 int resetQueryRepresentation (TYPE_1__*,int) ;

__attribute__((used)) static bool
Cover(DocRepresentation *doc, int len, QueryRepresentation *qr, CoverExt *ext)
{
 DocRepresentation *ptr;
 int lastpos = ext->pos;
 bool found = 0;





 check_stack_depth();

 resetQueryRepresentation(qr, 0);

 ext->p = INT_MAX;
 ext->q = 0;
 ptr = doc + ext->pos;


 while (ptr - doc < len)
 {
  fillQueryRepresentationData(qr, ptr);

  if (TS_execute(GETQUERY(qr->query), (void *) qr,
        TS_EXEC_EMPTY, checkcondition_QueryOperand))
  {
   if (WEP_GETPOS(ptr->pos) > ext->q)
   {
    ext->q = WEP_GETPOS(ptr->pos);
    ext->end = ptr;
    lastpos = ptr - doc;
    found = 1;
   }
   break;
  }
  ptr++;
 }

 if (!found)
  return 0;

 resetQueryRepresentation(qr, 1);

 ptr = doc + lastpos;


 while (ptr >= doc + ext->pos)
 {



  fillQueryRepresentationData(qr, ptr);

  if (TS_execute(GETQUERY(qr->query), (void *) qr,
        TS_EXEC_CALC_NOT, checkcondition_QueryOperand))
  {
   if (WEP_GETPOS(ptr->pos) < ext->p)
   {
    ext->begin = ptr;
    ext->p = WEP_GETPOS(ptr->pos);
   }
   break;
  }
  ptr--;
 }

 if (ext->p <= ext->q)
 {




  ext->pos = (ptr - doc) + 1;
  return 1;
 }

 ext->pos++;
 return Cover(doc, len, qr, ext);
}
