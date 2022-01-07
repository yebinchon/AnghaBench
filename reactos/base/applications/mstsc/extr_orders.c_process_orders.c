
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
typedef int uint16 ;
struct TYPE_26__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_25__ {int order_type; int text2; int ellipse2; int ellipse; int polyline; int polygon2; int polygon; int triblt; int memblt; int desksave; int rect; int line; int screenblt; int patblt; int destblt; TYPE_4__ bounds; } ;
struct TYPE_24__ {scalar_t__ p; } ;
typedef TYPE_1__* STREAM ;
typedef int RD_BOOL ;
typedef TYPE_2__ RDP_ORDER_STATE ;


 int RDP_ORDER_BOUNDS ;
 int RDP_ORDER_CHANGE ;
 int RDP_ORDER_DELTA ;




 int RDP_ORDER_LASTBOUNDS ;
 int RDP_ORDER_SECONDARY ;
 int RDP_ORDER_STANDARD ;


 int error (char*,...) ;
 scalar_t__ g_next_packet ;
 TYPE_2__ g_order_state ;
 int in_uint8 (TYPE_1__*,int) ;
 int process_desksave (TYPE_1__*,int *,int ,int) ;
 int process_destblt (TYPE_1__*,int *,int ,int) ;
 int process_ellipse (TYPE_1__*,int *,int ,int) ;
 int process_ellipse2 (TYPE_1__*,int *,int ,int) ;
 int process_line (TYPE_1__*,int *,int ,int) ;
 int process_memblt (TYPE_1__*,int *,int ,int) ;
 int process_patblt (TYPE_1__*,int *,int ,int) ;
 int process_polygon (TYPE_1__*,int *,int ,int) ;
 int process_polygon2 (TYPE_1__*,int *,int ,int) ;
 int process_polyline (TYPE_1__*,int *,int ,int) ;
 int process_rect (TYPE_1__*,int *,int ,int) ;
 int process_screenblt (TYPE_1__*,int *,int ,int) ;
 int process_secondary_order (TYPE_1__*) ;
 int process_text2 (TYPE_1__*,int *,int ,int) ;
 int process_triblt (TYPE_1__*,int *,int ,int) ;
 int rdp_in_present (TYPE_1__*,int *,int,int) ;
 int rdp_parse_bounds (TYPE_1__*,TYPE_4__*) ;
 int ui_reset_clip () ;
 int ui_set_clip (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int unimpl (char*,int) ;

void
process_orders(STREAM s, uint16 num_orders)
{
 RDP_ORDER_STATE *os = &g_order_state;
 uint32 present;
 uint8 order_flags;
 int size, processed = 0;
 RD_BOOL delta;

 while (processed < num_orders)
 {
  in_uint8(s, order_flags);

  if (!(order_flags & RDP_ORDER_STANDARD))
  {
   error("order parsing failed\n");
   break;
  }

  if (order_flags & RDP_ORDER_SECONDARY)
  {
   process_secondary_order(s);
  }
  else
  {
   if (order_flags & RDP_ORDER_CHANGE)
   {
    in_uint8(s, os->order_type);
   }

   switch (os->order_type)
   {
    case 128:
    case 129:
     size = 3;
     break;

    case 135:
    case 136:
    case 137:
    case 133:
    case 138:
     size = 2;
     break;

    default:
     size = 1;
   }

   rdp_in_present(s, &present, order_flags, size);

   if (order_flags & RDP_ORDER_BOUNDS)
   {
    if (!(order_flags & RDP_ORDER_LASTBOUNDS))
     rdp_parse_bounds(s, &os->bounds);

    ui_set_clip(os->bounds.left,
         os->bounds.top,
         os->bounds.right -
         os->bounds.left + 1,
         os->bounds.bottom - os->bounds.top + 1);
   }

   delta = order_flags & RDP_ORDER_DELTA;

   switch (os->order_type)
   {
    case 140:
     process_destblt(s, &os->destblt, present, delta);
     break;

    case 135:
     process_patblt(s, &os->patblt, present, delta);
     break;

    case 130:
     process_screenblt(s, &os->screenblt, present, delta);
     break;

    case 137:
     process_line(s, &os->line, present, delta);
     break;

    case 131:
     process_rect(s, &os->rect, present, delta);
     break;

    case 141:
     process_desksave(s, &os->desksave, present, delta);
     break;

    case 136:
     process_memblt(s, &os->memblt, present, delta);
     break;

    case 128:
     process_triblt(s, &os->triblt, present, delta);
     break;

    case 134:
     process_polygon(s, &os->polygon, present, delta);
     break;

    case 133:
     process_polygon2(s, &os->polygon2, present, delta);
     break;

    case 132:
     process_polyline(s, &os->polyline, present, delta);
     break;

    case 139:
     process_ellipse(s, &os->ellipse, present, delta);
     break;

    case 138:
     process_ellipse2(s, &os->ellipse2, present, delta);
     break;

    case 129:
     process_text2(s, &os->text2, present, delta);
     break;

    default:
     unimpl("order %d\n", os->order_type);
     return;
   }

   if (order_flags & RDP_ORDER_BOUNDS)
    ui_reset_clip();
  }

  processed++;
 }






}
